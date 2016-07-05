#!/bin/bash
if [ "x$1" == "xtim" ]
then
    echo "Branding TIM"
    sed -i '' 's/com.voismart.chat/it.telecomitalia.chat/g' config.xml
    sed -i '' 's/VoiSmart Chat mobile application/TIM chat/g' config.xml
    sed -i '' 's@http://www.voismart.it@http://www.tim.it@g' config.xml
    sed -i '' 's/VoiSmart Chat/TIM chat/g' config.xml
else
    echo "Unknown branding $1"
fi
