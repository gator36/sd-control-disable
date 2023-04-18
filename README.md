# sd-control-disable

A bash script to enable and disable the onboard Steam Deck controller buttons.

This affects the:
Steam Button / ... Button
Face Buttons / Directional Pad / Analog sticks
Small Buttons above the sticks and face Buttons (I call them Start and Select, haha)
Triggers / Bumpers / Back Buttons
(It may affect the touch functionality of the stick faces and gyros, but I did not test those)

This does NOT affect the:
Screen
Touch functionality of the screen
USB-C Port (Or anything connected to said port; a connected controller will work normally)
Bluetooth/WiFi (As above, a connected controller will work normally as will Wifi)

Using this script to disable these things, it turns the Steam Deck into a single-board computer with a touch screen, essentially.

Why did I write this? I wanted to play RTS games with keyboard/mouse and not deal with Steam arguing with me whether to use Steam Input
or a keyboard and mouse. I ran into this trying to play Command and Conquer Remastered. This may have a lot of potential use cases,
especially for FPS minded gamers (Counterstrike, Apex Legends, etc.) who would rather use KB/M. Or a user who may just want to use it
as a portable PC and has no interest in gaming. It could be rolled into a start script for certain games to enable/disable the devices
for specific games.

Usage: Run ./sd.sh in a terminal environment with included arguments below
       E.g. ./sd.sh -e 
            ./sd.sh -d 

Arguments: -e, enable or -d disable
           Adding no argument will return an error message and change nothing.

       (Note for novice users: you may need to set the script as executable in the terminal
       via "chmod +X sd.sh" before it will run properly. You will also need superuser
       credentials to bind/unbind the devices, so it will prompt you for the sudo
       password.)

This script is designed to enable and disable all button functionality on the Steam Deck by binding and unbinding the
USBHIDs. 

Hope this helps out anyone who is needing this functionality.
