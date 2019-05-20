#!/bin/bash

mv /Library/MobileSubstrate/DynamicLibraries/Eclipse.dylib  /Library/MobileSubstrate/DynamicLibraries/Eclipse.disabled

mv /Library/MobileSubstrate/DynamicLibraries/EclipseAAUI.dylib  /Library/MobileSubstrate/DynamicLibraries/EclipseAAUI.disabled

mv /Library/MobileSubstrate/DynamicLibraries/EclipseSB.dylib  /Library/MobileSubstrate/DynamicLibraries/EclipseSB.disabled

mv /Library/MobileSubstrate/DynamicLibraries/EclipseShareSheets.dylib  /Library/MobileSubstrate/DynamicLibraries/EclipseShareSheets.disabled

mv /Library/MobileSubstrate/DynamicLibraries/Noctis12.dylib  /Library/MobileSubstrate/DynamicLibraries/Noctis12.disabled

mv /Library/MobileSubstrate/DynamicLibraries/NoctisApplications.dylib  /Library/MobileSubstrate/DynamicLibraries/NoctisApplications.disabled

mv /Library/MobileSubstrate/DynamicLibraries/Dune.dylib  /Library/MobileSubstrate/DynamicLibraries/Dune.disabled

killall -9 SpringBoard