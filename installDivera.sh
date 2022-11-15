#!/bin/bash

# Get user input

echo "Enter Dashboard ID:"
read dashboardID
echo "Enter autologin key:"
read loginKey

URL="https://app.divera247.com/spa-next/dashboard/$dashboardID?autologin=$loginKey&theme=dark"

# Check URL
echo
echo "Check URL:"
echo $URL


# Leave program when user does not verify URL
read -p "Is the URL correct? [y/n]: " yesNo 
if [ $yesNo != "y" ]
    then
    echo "Leaving installation script!"
    exit
fi

# Create divera directory
sudo mkdir -p /etc/divera

# Create startup script file
sudo touch /etc/divera/diveraStart.sh

# Create startup script
cat <<EOT > /etc/divera/diveraStart.sh
#!/bin/bash

URL="$URL"
xset s off
xset s noblank
xset -dpms

chromium-browser --noerrdialogs --kiosk --incognito \$URL &>/dev/null &
EOT

# File must be executable
chmod +x /etc/divera/diveraStart.sh

# Write autostart file
cat <<EOT > /etc/xdg/lxsession/LXDE-pi/autostart
@lxpanel --profile LXDE-pi
@pcmanfm --desktop --profile LXDE-pi
@sh /etc/diveraStart.sh
EOT
