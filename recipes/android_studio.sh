# https://desktop.figma.com/mac-installer/Figma.dmg

#!/usr/bin/env bash
shopt -s expand_aliases

function install_android_studio {
   if [ ! -d "Android Studio.app" ]; then
      log info downloading Android Studio
      curl -s -L -o "android_studio.zip" "https://redirector.gvt1.com/edgedl/android/studio/install/2023.3.1.18/android-studio-2023.3.1.18-mac_arm.dmg"
      log info installing Android Studio
      _ unzip ../android_studio.zip
      _ hdiutil attach ../android-studio-2023.3.1.18-mac_arm.dmg
      _ sudo mv '/Volumes/Android Studio - Jellyfish | 2023.3.1/Android Studio.app' /Applications/

      if [ $? -ne 0 ]; then
         log error "failed to install Android Studio"
         exit 1
      fi
   else
      log info "Android Studio already installed. Skipping"
   fi
}
