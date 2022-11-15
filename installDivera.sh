#!/bin/bash

# Get user input

echo "Enter Dashboard ID:"
dashboardID
echo "Enter autologin key:"
loginKey

URL="https://app.divera247.com/spa-next/dashboard/$dashboardID?autologin=$loginKey&theme=dark"

# Check URL
echo
echo "Check URL:"
echo $URL


# Leave program when user does not verify URL
read -p "Is the URL correct? [y/n]: " yesNo 
if [$yesNo != "y"]
    then
    echo "Leaving installation script!"
    exit
fi

# Create divera directory
mkdir /etc/divera

# Writing URL file
$URL > /etc/divera/dashboardURL

# Create startup script
cat << /etc/divera/diveraStart.sh
\#!/bin/bash

URL << /etc/divera/dashboardURL

xset s off
xset s noblank
xset -dpms

chromium-browser --noerrdialogs --kiosk --incognito $URL &>/dev/null &

/etc/divera/diveraStart.sh

# File must be executable
chmod +x /etc/divera/diveraStart.sh

# Add startup script ot autostart
"@sh /etc/diveraStart.sh" >> /etc/xdg/lxsession/LXDE-pi/autostart