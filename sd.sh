#!/bin/bash

# Argument -e or -d passed via command line; anything else will close out without changes
# This disables or enables the Steam Deck onboard controller, idea is to make a script with two args to enable/disable without needing to leave script/console open
# Requires sudo to bind/unbind USB devices
clear
echo "######"
echo "------"
echo "# Steam Deck Onboard Controls Enable/Disable Script #"
echo "------"
printf "\n"
echo "This script enables/disables all onboard controller input"
echo "on the Steam Deck. Useful for using controllers or keyboard"
echo "and mouse."
echo "Arguments are -e and -d, for enable and disable."
echo "NOTE: This does not enable/disable the touch screen, USB-C, or Bluetooth/WiFi!"
printf "\n"

if [ "$1" == "-e" ]
then
    echo "Enabling the Steam Deck onboard controls."
    echo "Binding the USBHIDs of the Steam Deck controls..."
    echo "3-3:1.0" | sudo tee /sys/bus/usb/drivers/usbhid/bind
    echo "3-3:1.1" | sudo tee /sys/bus/usb/drivers/usbhid/bind
    echo "3-3:1.2" | sudo tee /sys/bus/usb/drivers/usbhid/bind
    printf "ONBOARD CONTROLS \e[31m\e[1m\e[107m\e[5mENABLED.\e[0m \n"
    printf "Please run this script with -d argument again to disable them. \n"
    echo "######"
    printf "\n"
    exit 0
    fi
if [ "$1" == "-d" ]
then
    echo "Disabling the Steam Deck onboard controls."
    echo "Unbinding the USBHIDs of the Steam Deck controls..."
    echo "3-3:1.0" | sudo tee /sys/bus/usb/drivers/usbhid/unbind
    echo "3-3:1.1" | sudo tee /sys/bus/usb/drivers/usbhid/unbind
    echo "3-3:1.2" | sudo tee /sys/bus/usb/drivers/usbhid/unbind
    printf "ONBOARD CONTROLS \e[31m\e[1m\e[107m\e[5mDISABLED.\e[0m \n"
    echo "Please run this script with -e argument again"
    echo "to re-enable them, or reboot your Steam Deck."
    echo "######"
    printf "\n"
    exit 0
    fi
if [ "$1" != "-e" ] && [ "$1" != "-d" ]
then
    echo "Incorrect argument (-e and -d are valid arguments). No changes made."
    echo "Please run the script with the "-e" or "-d" argument."
    echo "######"
    printf "\n"
    exit 0
    fi
exit 0
