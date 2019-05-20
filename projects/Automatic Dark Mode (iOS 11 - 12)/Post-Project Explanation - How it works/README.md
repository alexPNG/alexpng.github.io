
# - THIS README IS INCOMPLETE, WILL BE FULLY WRITTEN IN THE UPCOMING DAYS - 
# - THIS README IS INCOMPLETE, WILL BE FULLY WRITTEN IN THE UPCOMING DAYS - 
# - THIS README IS INCOMPLETE, WILL BE FULLY WRITTEN IN THE UPCOMING DAYS - 

***

# Introduction

In this README I'll be explaining how I came up with this method and how it works, for future reference and/or other projects made by other people. To note that this method is an open-source project and can be used by anyone and even be implemented/redistributed in other projects.

***

# Pre-Concept & How it works

For a while that I was thinking about doing something like this over a script bash, without the need to use Objective-C/Swift to code a proper tweak for iOS firmwares, not only because I was curious but also because I lack the means and the knowledge of building a tweak.xm. I took some interest in using the iOS terminal to achieve something like this with a simple command line, and then I'd later on use this as an SSH script file to run the specified commands when the script was demanded to be executed over an action, in this case, by the time of the day/night.
Upon researching the tweak iCleaner Pro, I've discovered that the tweak disables/enables other tweaks and daemons by renaming the extension of the files specified to those tweaks/daemons, so basically I got to learn that for tweaks, it changes the extension **.dylib** to **.disabled** _(non-existing extension)_ that are located in **/Library/MobileSubstrate/DynamicLibraries**. With this in mind and without the existence of a shell command to disable/enable .dylib files, I've pretty much used this method by renaming the extension of the dark mode tweaks used in the guide, and later on to apply them automatically using the tweak Activator.
Here's how the **EnableDarkMode.sh** and **DisableDarkMode.sh** script files _(for iOS 12)_ look on the inside:

**EnableDarkMode.sh:**

```

#!/bin/bash



mv /Library/MobileSubstrate/DynamicLibraries/Eclipse.disabled  /Library/MobileSubstrate/DynamicLibraries/Eclipse.dylib


mv /Library/MobileSubstrate/DynamicLibraries/EclipseAAUI.disabled  /Library/MobileSubstrate/DynamicLibraries/EclipseAAUI.dylib


mv /Library/MobileSubstrate/DynamicLibraries/EclipseSB.disabled  /Library/MobileSubstrate/DynamicLibraries/EclipseSB.dylib


mv /Library/MobileSubstrate/DynamicLibraries/EclipseShareSheets.disabled  /Library/MobileSubstrate/DynamicLibraries/EclipseShareSheets.dylib


mv /Library/MobileSubstrate/DynamicLibraries/Noctis12.disabled  /Library/MobileSubstrate/DynamicLibraries/Noctis12.dylib


mv /Library/MobileSubstrate/DynamicLibraries/NoctisApplications.disabled  /Library/MobileSubstrate/DynamicLibraries/NoctisApplications.dylib


mv /Library/MobileSubstrate/DynamicLibraries/Dune.disabled  /Library/MobileSubstrate/DynamicLibraries/Dune.dylib



killall -9 SpringBoard

```

**DisableDarkMode.sh:**

```

#!/bin/bash



mv /Library/MobileSubstrate/DynamicLibraries/Eclipse.dylib  /Library/MobileSubstrate/DynamicLibraries/Eclipse.disabled


mv /Library/MobileSubstrate/DynamicLibraries/EclipseAAUI.dylib  /Library/MobileSubstrate/DynamicLibraries/EclipseAAUI.disabled


mv /Library/MobileSubstrate/DynamicLibraries/EclipseSB.dylib  /Library/MobileSubstrate/DynamicLibraries/EclipseSB.disabled


mv /Library/MobileSubstrate/DynamicLibraries/EclipseShareSheets.dylib  /Library/MobileSubstrate/DynamicLibraries/EclipseShareSheets.disabled


mv /Library/MobileSubstrate/DynamicLibraries/Noctis12.dylib  /Library/MobileSubstrate/DynamicLibraries/Noctis12.disabled


mv /Library/MobileSubstrate/DynamicLibraries/NoctisApplications.dylib  /Library/MobileSubstrate/DynamicLibraries/NoctisApplications.disabled


mv /Library/MobileSubstrate/DynamicLibraries/Dune.dylib  /Library/MobileSubstrate/DynamicLibraries/Dune.disabled



killall -9 SpringBoard

```

So, as you can see, these two SSH scripts, when executed, will rename all the .dylib extensions to disable/enable the corresponding tweak. It will also kill the SpringBoard to give the device a respring, to apply the changes regarding the tweaks.

***

# Analysis & Post-Issues

I'm going to brief in the analysis behind these stated directories and the issues I came across when building this script.

- The directory **'/Library/MobileSubstrate/DynamicLibraries'** is where all the **.dylib** files of tweaks are stored, for those that use Substrate _(and not Substitute)_. 
- The **'mv'** command gives instructions to rename the the files by replacing/moving their extensions. I used this command because **'rm'** was not native on **/lib/bash**, so this way it works too, it's easier, and it requires no dpkg-install of 'rm'.
- The **'killall -9 SpringBoard'** command does what it states. It kills the SpringBoard, making your device respring to apply the changes to the tweaks that were enabled/disabled.

Along the way I came across an issue regarding _write_ permissions in **/DynamicLibraries** because the .sh script files were located in **/Documents**, hence they didn't have root/admin permissions to write over files in **/DynamicLibraries**. The solution for this problem was to grant _write_ permissions to _Others_ in **/DynamicLibraries**. The tutorial specifies this manually using **Filza File Manager**, but the same can be done through the terminal but only when logged in as root, so to avoid more confusion and unnecessary work, I've stated the manual way to ease out for the users.
I also came across a few issues regarding the integrity of the script by relying on the existing named extension, so the way to fix this is to manually execute either **EnableDarkMode.sh** or **DisableDarkMode.sh**, depending on the situation. To find more about this, check the **Troubleshooting** area in the tutorial guide.
Besides the issue named above, it was stated to me that updating the tweaks used for this automatic dark mode would break the scripts. To fix this, the user can simply uninstall and re-install the tweaks, or manually change the .dylib files extensions. To prevent this, the user must enable the tweaks by manually executing **EnableDarkMode.sh** before updating the tweaks.

***

# - THIS README IS INCOMPLETE, WILL BE FULLY WRITTEN IN THE UPCOMING DAYS - 
# - THIS README IS INCOMPLETE, WILL BE FULLY WRITTEN IN THE UPCOMING DAYS - 
# - THIS README IS INCOMPLETE, WILL BE FULLY WRITTEN IN THE UPCOMING DAYS - 
