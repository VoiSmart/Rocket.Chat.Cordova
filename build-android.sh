#!/bin/bash
BASEPATH="/Users/alex/workspace/android-developer-tools/sdk"
export PATH=$BASEPATH/tools:$BASEPATH/platform-tools:$PATH

#Fix GCM and Google Plus dependencies in cordova plugins
#Check: https://github.com/RocketChat/Rocket.Chat.Cordova/issues/118
sed -i -e 's/com.google.android.gms:play-services-plus:+/com.google.android.gms:play-services-plus:9.0.2/g' plugins/cordova-plugin-googleplus/plugin.xml
sed -i -e 's/com.google.android.gms:play-services-identity:+/com.google.android.gms:play-services-identity:9.0.2/g' plugins/cordova-plugin-googleplus/plugin.xml
sed -i -e 's/com.google.android.gms:play-services-gcm:+/com.google.android.gms:play-services-gcm:9.0.2/g' plugins/phonegap-plugin-push/plugin.xml

cordova build android
