#!/bin/bash

mv /Library/MobileSubstrate/DynamicLibraries/Eclipse.disabled  /Library/MobileSubstrate/DynamicLibraries/Eclipse.dylib

mv /Library/MobileSubstrate/DynamicLibraries/EclipseAAUI.disabled  /Library/MobileSubstrate/DynamicLibraries/EclipseAAUI.dylib

mv /Library/MobileSubstrate/DynamicLibraries/EclipseSB.disabled  /Library/MobileSubstrate/DynamicLibraries/EclipseSB.dylib

mv /Library/MobileSubstrate/DynamicLibraries/EclipseShareSheets.disabled  /Library/MobileSubstrate/DynamicLibraries/EclipseShareSheets.dylib

mv /Library/MobileSubstrate/DynamicLibraries/NoctisXI.disabled  /Library/MobileSubstrate/DynamicLibraries/NoctisXI.dylib

mv /Library/MobileSubstrate/DynamicLibraries/NoctisApplications.disabled  /Library/MobileSubstrate/DynamicLibraries/NoctisApplications.dylib

mv /Library/MobileSubstrate/DynamicLibraries/Dune.disabled  /Library/MobileSubstrate/DynamicLibraries/Dune.dylib

killall -9 SpringBoard