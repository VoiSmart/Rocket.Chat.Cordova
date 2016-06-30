# Rocket.Chat.Cordova
Rocket.Chat Cross-Platform Mobile Application via Cordova

# !!!Attention!!!
This application only connects with servers that were compiled with mobile platforms enabled

# How to run
#### Requirements
 * npm
 * nodejs 0.12

#### Install dependencies
If you are on OS X, execute the initialization script:
```shell
./init-osx.sh
```
which will take care of installing the required XCode Command Line Tools (if not already installed) and everything needed to run cordova app.


For other platforms:
```shell
sudo npm install cordova coffee-script -g
npm install
```

### How to refactor app package name
```shell
cordova platform remove android
cordova platform remove ios
vim config.xml 
```
Then refactor:
```xml
<widget android-versionCode="236" 
        id="com.voismart.chat"
        ios-CFBundleVersion="4"
        version="2.3.2" 
        xmlns="http://www.w3.org/ns/widgets" 
        xmlns:cdv="http://cordova.apache.org/ns/1.0">
```
by changing `com.voismart.chat` to the desired package name and then execute:
```shell
cordova platform add android
cordova platform add ios
cordova prepare
cordova build ios
```

### Create Conf files
```
echo 'Bugsnag.apiKey = "YOUR-API-KEY-HERE";' > www/js/bugsnag_apikey.js
echo 'window.ANDROID_SENDER_ID = "YOUR-ANDROID-ID-HERE";' > www/shared/js/android_sender_id.js
```


#### Prepare - Install platforms and plugins
```shell
cordova prepare
```

#### Run on emulator
```shell
cordova emulate ios
```
or
```shell
cordova emulate android
```

#### Run on device
```shell
cordova run ios --device
```
or
```shell
cordova run android --device
```

#### Troubleshooting

Some have had issues with a couple of dependencies not being installed by npm.
Running: `npm install ticons underscore` may be necessary.

## I can't connect to my server instance
If you are running your server using the command `meteor` you should define the URL where the mobile application will try to connect `meteor --mobile-server http://192.168.1.10:3000`, replace **http://192.168.1.10:3000** by your IP or domain.

This is necessary because the mobile application download all files to run locally and then start the connection with your server, as you are running as develop mode this is necessary.
