#!/bin/bash

echo [][][][][][][][][][][][][][][]
echo 
echo !————————IMPORTANT——————————!
echo 
echo In case of an error...
echo 
echo Make sure you have renamed the RenameThisFolder.CWDP to whatever name you want while not removing/renaming the ‘.CWDP’ at the end of the name. Keep the ‘.CWDP’ at the end of the name of the folder
echo 
echo Make sure all files are in the correct folder and that they end in .jpeg
echo 
echo Also make sure that the sizing of the files are correct. If you need any help, read the TUTORIAL.txt file for troubleshooting and to check the steps and correct sizes of the files
echo 
echo [][][][][][][][][][][][][][][]
echo 
echo Please wait...
echo 
echo Renaming file in /Light to Light.jpeg
echo 
mv Light/*[jJ][pP][eE][gG] Light/Light.jpeg
echo 
echo Renaming file in /Dark to Dark.jpeg
echo 
mv Dark/*[jJ][pP][eE][gG] Dark/Dark.jpeg
echo 
echo Renaming file in /Thumbnail to Thumbnail.jpeg
echo 
mv Thumbnail/*[jJ][pP][eE][gG] Thumbnail/Thumbnail.jpeg
echo 
echo Moving file Light.jpeg in /Light to folder that ends in .CWDP
echo 
mv Light/Light.jpeg *CWDP
echo 
echo Moving file Dark.jpeg in /Dark to folder that ends in .CWDP
echo 
mv Dark/Dark.jpeg *CWDP
echo 
echo Moving file Thumbnail.jpeg in /Thumbnail to folder that ends in .CWDP
echo 
mv Thumbnail/Thumbnail.jpeg *CWDP
echo 
echo Copying Wallpaper.plist to folder that ends in .CWDP
echo 
cp -a Wallpaper.plist *CWDP
echo 
echo Moving the folder that ends in .CWDP to /Library/WallpaperLoader/DarkPapersCustom
echo 
mv *CWDP /Library/WallpaperLoader/DarkPapersCustom
echo 
echo Creating a new .CWDP folder in case you want to add more custom wallpapers using this script
echo 
mkdir RenameThisFolder.CWDP
echo 
echo [][][][][][][][][][][][][][][]
echo 
echo !—————————COMPLETED—————————!
echo 
echo The process is now complete. You can exit the script and check your new custom wallpaper in the static wallpapers inside the Settings app in the Wallpaper section. You DON’T need a Respring for the changes to take effect.
echo 
echo In case it isn’t showing up/not working, please read TUTORIAL.txt for a troubleshoot and to follow every step carefully.
echo 
echo You can always manually delete the folder that will be located in /Library/WallpaperLoader or by using the DeleteAll.sh script file which deletes all folders that end in .CWDP that are inside the folder /WallpaperLoader
echo 
echo [][][][][][][][][][][][][][][]