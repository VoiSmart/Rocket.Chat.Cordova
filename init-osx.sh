#!/bin/bash
xcode-select --install
sudo npm install -g cordova coffee-script plugman
sudo npm install --unsafe-perm=true -g ios-sim
sudo npm install --unsafe-perm=true -g ios-deploy
npm install

echo 'Bugsnag.apiKey = "YOUR-API-KEY-HERE";' > www/js/bugsnag_apikey.js
echo 'window.ANDROID_SENDER_ID = "YOUR-ANDROID-ID-HERE";' > www/shared/js/android_sender_id.js

cordova prepare
cordova build ios
