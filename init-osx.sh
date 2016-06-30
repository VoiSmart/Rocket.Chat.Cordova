#!/bin/bash
xcode-select --install
curl "https://nodejs.org/dist/latest/node-${VERSION:-$(wget -qO- https://nodejs.org/dist/latest/ | sed -nE 's|.*>node-(.*)\.pkg</a>.*|\1|p')}.pkg" > "$HOME/Downloads/node-latest.pkg" && sudo installer -store -pkg "$HOME/Downloads/node-latest.pkg" -target "/"

sudo npm install -g cordova coffee-script plugman
sudo npm install --unsafe-perm=true -g ios-sim
sudo npm install --unsafe-perm=true -g ios-deploy
npm install

echo "Bugsnag.apiKey = \"$1\";" > www/js/bugsnag_apikey.js
echo "window.ANDROID_SENDER_ID = \"$2\";" > www/shared/js/android_sender_id.js

cordova prepare
cordova build ios
