#!/bin/bash
mkdir -p /home/pi/temp_slide
rm -rf /home/pi/temp_slide/*

/home/pi/Dropbox-Uploader/dropbox_uploader.sh download /Back2Game\ Produktion /home/pi/temp_slide/#Move to parameter

rm -rf /home/pi/B2G_Prod/*
cp -r /home/pi/temp_slide/* /home/pi/B2G_Prod/
#TODO: diff and if difference kill fbi process

killall fbi
