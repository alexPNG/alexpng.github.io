**Preview:** https://www.reddit.com/r/jailbreak/comments/ay6vxu/upcoming_automatic_dark_mode_eclipse_and_noctis/

# Introduction   

Hello everyone. In this tutorial I’ll be guiding you step by step on how to get a fully automatic dark mode depending on the day/night time zone. This is a nice addition to the automatic 24h cycle mojave dynamic wallpaper, for that MojaveOS dark mode look.   

You can get the wallpaper and the tutorial for it here: https://www.reddit.com/r/jailbreak/comments/aumwt0/tutorial_get_the_macos_mojave_dynamic_wallpaper/   

***   

# Requirements   

- Jailbroken device on iOS 11.x - 12.x _(now fully works on iOS 11, just download the correct zip folder for iOS 11)_;   
- Filza File Manager _(or another similar tweak that gives you write privileges)_;   
- Safari Plus _(optional in case you have another way to download the files)_;    
- Activator;    
- Activator Fix;    
- Eclipse12 _(or Eclipse for iOS 11)_ and/or Noctis12 _(NoctisXI for iOS 11)_ and/or Dune.     

**DISCLAIMER:** Make sure you use Activator beta from https://rpetri.ch/cydia/activator/beta/ and not from BigBoss. And make sure you also have Activator Fix installed, otherwise it won’t work for you. Read the tutorial below to get all the correct repos.   

**NOTE:** This works for whatever which one of those 3 tweaks you have. So it doesn’t matter if you only have 1 of the 3, or 2 of the 3, or even 3 of the 3 tweaks mentioned above, it’ll work for any of the 3 tweaks.   

***   

# Tutorial   

## Step 1   

Install Filza File Manager, Safari Plus, Activator, Activator Fix, and your desired dark mode tweaks _(Noctis12/Eclipse12/Dune)_. Repositories for each are as follows:   

- **Filza File Manager:** http://apt.thebigboss.org/repofiles/cydia/   

- **Safari Plus:** http://apt.thebigboss.org/repofiles/cydia/   

- **Activator:** https://rpetri.ch/cydia/   

- **Activator Fix:** http://jakeashacks.ga/cydia/   

- **Eclipse Dark Mode (iOS 11 or 12):** https://repo.packix.com/   

- **Noctis12 (NoctisXI for iOS 11):** https://repo.packix.com/   

- **Dune:** https://skitty.xyz/repo/   

## Step 2   

Using Safari _(with the installed tweak Safari Plus unless you have other ways to download the files)_, download the following zipped folder that corresponds to your iOS version and also download the file.   

- **iOS 12 Zipped Folder _(AutoDarkMode)_:** https://www.dropbox.com/s/kpow2n01w1e76wu/Dark%20Mode%20iOS%2012.zip?dl=0   

- **iOS 11 Zipped Folder _(AutoDarkMode)_:** https://www.dropbox.com/s/m43efpwtoqyylqe/Dark%20Mode%20iOS%2011.zip?dl=0   

- **File _(libactivator.exported.plist)_:** https://www.dropbox.com/s/mudhxz44morjdsf/libactivator.exported.plist?dl=0   

## Step 3   

Go to Filza File Manager and look for the folder where you’ve saved the downloaded zipped folder and the plist file _(if you haven’t changed the path, it should be located in /var/mobile/Downloads)_.   

Unzip the zipped folder by tapping on it. There should appear an unzipped folder called AutoDarkMode with two files inside of it.   

Move the unzipped **AutoDarkMode** folder to **/var/mobile/Documents** and **make sure you only have one folder called AutoDarkMode which is the one with two .sh files inside.**   

Now go back to **/var/mobile/Downloads** and move the file **libactivator.exported.plist** to **/var/mobile/Library/Preferences**   

## Step 4   

Now that the downloaded folder and file are where they should be, you need to grant _write_ permissions to _Others_ in **DynamicLibraries**, otherwise this won’t work due to the lack of root privileges. So you should do the following:   

Go to **/Library/MobileSubstrate/** and you should see a folder called **DynamicLibraries**. Tap on the blue **( i )** next to the folder, it will open the properties of that folder. Inside the properties look for **ACCESS PERMISSIONS**, and below you should see:   

_Sticky_   
_Owner - Read, Write, Execute_   
_Group - Read, Execute_   
_Others - Read, Execute_   

_Here’s a screenshot in case you’re confused:_ https://i.imgur.com/oJBAsUx.png   

Tap on **Others** and it should open the access permissions properties, so scroll down until you see “Others” once again, and tick-check the **Write** in “Others”. It should look like this once you do it: https://i.imgur.com/7O4m8m8.png   

Press _“Save”_ at the top right corner and confirm the changes have been applied by pressing _“Back”_ and seeing if _Others_ now has Read, Write, Execute permissions. Like this: https://i.imgur.com/6bb6BG6.png   

You can now close Filza File Manager.   

## Step 5   

Before we proceed to Activator, **you MUST have your dark mode tweaks enabled.** So make sure you have Eclipse/Noctis/Dune enabled and already working _(already in dark mode)_. Otherwise the automated dark mode won’t work until you manually enable the tweaks before using Activator.   

So now that you have your dark mode tweaks enabled and you’re already in a dark mode state, you’re ready to continue. Go to **Activator** and tap on **Assignments** and then tap on **Restore Assignments**. This will fetch the plist file that you previously placed in Preferences, which will contain the already built actions in Activator for the automatic dark mode.   

You’re now done. Your dark mode will be enabled every day at **8pm** _(20H00)_, and disable every day at **6am** _(06H00)_.   

You can change the time to your own liking by going into Activator, tap _Anywhere_, scroll down to _Scheduled_ and then you tap on _06:00_ to change the disable time and choose a new time, or tap on _20:00_ to change the enable time and choose a new time.   

**NOTE:** Upon the specified hours, a pop-up alert will show up to let you know that you have 15 seconds before your device resprings to apply the changes of enabling/disabling your automatic dark mode. Sadly I couldn’t find a way to enable/disable the dark mode without having to do a respring.   

**IMPORTANT:** Unless you know what you’re doing, I do not recommend editing anything else beyond the time of the enabling/disabling action in Activator. I also do not recommend changing the name or the directory of any of the files/folders that you downloaded in this tutorial unless you also know what you’re doing. Please read the information below to know why and how this automated dark mode works, and also for troubleshooting in case your automatic dark mode stops working.   

***   

# Important Information and Troubleshooting   

## How It Works   

This automated dark mode works through Activator by running two specific .sh files in the folder AutoDarkMode. Those files are called _EnableDarkMode.sh_ and _DisableDarkMode.sh_. Essentially, these two files are basically terminal commands that once executed they will do the following:   

**DisableDarkMode.sh -** This file, when executed, will run commands on the background through the terminal to replace all _.dylib_ extensions files from Eclipse, Noctis and Dune to _.disabled_ extensions. This was inspired by iCleaner Pro, since their substrate tweak disabling method works exactly like this. Once the extensions are changed to _.disabled_ and a respring takes effect, the respective tweaks _(in this case Eclipse, Noctis, and Dune)_ will stop working/being enabled. So no processes will run on the background and no battery will be drained at all. This also fixes the Noctis12 bug that when disabled in settings, pop-ups would still appear in dark mode. With this method, it will completely disable the tweak.

**EnableDarkMode.sh -** This one will revert the previous action by renaming the extensions _.disabled_ to _.dylib_ once again, just like in iCleaner Pro. After the respring, the tweaks will start to work, thus achieving the dark mode as if you had just enabled the tweaks through settings, but all done automatically. This is also how iCleaner Pro works when re-enabling the substrate tweaks.   

If you hadn’t changed the **Others** access permissions to _Read, Write, Execute_, in **DynamicLibraries**, these two files wouldn’t have the necessary privileges to change the extensions of the _.dylib_ files due to the lack of root privileges. So basically what would happen is, a respring would take effect, but the dark mode tweaks wouldn’t be enabled/disabled.   

The plist file that you downloaded and moved to **Preferences** is the plist file that once restored in Activator, will add to Activator itself the two automatic time zone based actions to fetch the two .sh files. How it works is, once it’s X time zone, Activator will display a **pop-up alert followed by a quirk from the Taptic Engine** to inform you that you have **15 seconds before your device resprings**. After those 15 seconds, Activator runs a command in the terminal to fetch the corresponding .sh file in **~/Documents/AutoDarkMode** to either enable or disable the dark mode.   

This whole thing isn’t as quick and easy to get working, it’s a big tutorial, I’m aware of that, but it was the only working way _(at least that I’ve created and am aware of)_ to get a fully automatic dark mode on iOS, specially since a tweak for it doesn’t exist just yet, so maybe this tutorial will help you achieve that until a tweak comes out, or until iOS 13 introduces the automatic stock dark mode, or at least I hope so.   

If you have any questions regarding this tutorial or if you’re still confused on how this works, leave a reply and I’ll try to respond.   

## Troubleshooting   

If you’ve followed the tutorial step by step and didn’t mess anything up, you won’t likely encounter any issues. But here are some solutions for issues that might occur in case you do something by accident or in the event of a reboot/non-jailbroken state just before the time the automatic dark mode were to enable/disable.   

**IMPORTANT:** Since the tweaks _.dylib_ extensions are renamed to _.disabled_ when automatically disabling dark mode, you won’t be able to manually enable the dark mode tweaks through settings unless you execute the file **EnableDarkMode.sh** in **/var/mobile/Documents/AutoDarkMode**. Another alternative is to re-enable the substrate tweak addons in iCleaner Pro, which is essentially the same thing. Or you can just wait for the time it should automatically enable dark mode.   

**1.** If your device was on a non-jailbroken state during the time it was supposed to enable/disable the dark mode, go to **Filza File Manager**, and open the **AutoDarkMode** folder in **/var/mobile/Documents/**.   

- If you want to enable the dark mode manually, execute the **EnableDarkMode.sh** file by tapping on it.   
- If you want to disable the dark mode manually, execute the **DisableDarkMode.sh** file by tapping on it.   

Another solution is to just wait for the next time for the dark mode to enable/disable. In case you don’t mind waiting. Or enable/disable the tweaks addons through iCleaner Pro.   

**2.** If your dark mode is disabled but you are trying to enable it through the settings of Eclipse/Noctis/Dune and it doesn’t enable, go to **Filza File Manager**, and open the **AutoDarkMode** folder in **/var/mobile/Documents/** and execute the **EnableDarkMode.sh** by tapping on it. Now it should be enabled and you can disable/enable it again through the settings. Another solution is to enable the tweaks addons through iCleaner Pro.   

**3.** If you’re changing how your dark mode looks in the settings of the tweak, make sure to respring for the changes to take effect, even if dark mode is off. And in case you want to see how the changes look but dark mode is off and it isn’t enabling through the settings of the tweak, go to **Filza File Manager**, and open the **AutoDarkMode** folder in **/var/mobile/Documents/** and execute the **EnableDarkMode.sh** by tapping on it. Another solution is to enable the tweaks addons through iCleaner Pro.   

**4.** If your dark mode isn’t changing automatically when the time it was supposed to has arrived, go to *Filza File Manager**, and open the **AutoDarkMode** folder in **/var/mobile/Documents/** and execute the **EnableDarkMode.sh** by tapping on it. Another solution is to enable the tweaks addons through iCleaner Pro. And then enable the tweak manually through the tweak settings and either wait for the next time it was supposed to change, or manually change it by executing either **EnableDarkMode.sh** or **DisableDarkMode.sh**, and it will automatically change on the next time it is set to.   

**5.** If your automatic dark mode has stopped working after updating one of the listed tweaks, a quick fix is to uninstall the tweak and then re-install it. To prevent this from happening, before updating any of the tweaks, go to  **Filza File Manager**, and open the **AutoDarkMode** folder in **/var/mobile/Documents/** and execute the **EnableDarkMode.sh**. After that, update the tweaks and either let it be enabled or disable it by executing **DisableDarkMode.sh**.   

In case I have left out other issues, please let me know and I’ll add their solutions here. If you’re having issues following the tutorial, make sure you have followed every step cautiously, and if the issue still persists, don’t hesitate to ask for help.   

***   

# Additional Remarks   

I’d like to thank Ivano, since this method was inspired by how he enables/disables tweaks addons with his tool, iCleaner Pro.     

Also, many thanks to Ryan Petrich for updating Activator for iOS 12, I was meaning to try this method out ever since I jailbroke my device in iOS 12.   

Kudos to Jakes for the Activator Fix that still works in iOS 12.   

I’d also like to thank LaughingQuoll for being available to help me out regarding some questions about Noctis and its functionality with bash scripts.   

Thank you to u/SwengVLad for helping me add support for iOS 11.   