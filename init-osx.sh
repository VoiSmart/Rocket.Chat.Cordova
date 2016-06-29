#!/bin/bash
xcode-select --install
sudo npm install -g cordova coffee-script
sudo npm install --unsafe-perm=true -g ios-sim
sudo npm install --unsafe-perm=true -g ios-deploy
npm install

