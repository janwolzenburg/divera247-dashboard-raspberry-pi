# divera247-dashboard-raspberry-pi
Divera24/7 Dashboard installation on a Raspberry-Pi

## Prerequisites
- Unmodified Raspian distribution (Not! Debian 12 Bookworm)
- Monitor user in DIVERA 24/7
- One DIVERA 24/7 dashboard
- Consider using DIVERA's Monitor App (https://help.divera247.com/pages/viewpage.action?pageId=119865769)

## Attention
Changes related to the Pi's autostart may break functionality.
Autostart does not work with newest Debian 12 Bookworm distribution.

## Installation

### Execute installtion script
```
cd /home/pi/Desktop
git clone https://github.com/janwolzenburg/divera247-dashboard-raspberry-pi
cd divera247-dashboard-raspberry-pi
sudo chmod +x installDivera.sh
sudo ./installDivera.sh
```

### Notes
- enter dashboard-ID and autologin key
- the dashboard-ID is visible in the dashboard overview when logged in as a DIVERA 24/7 user
- the autologin key is visible when you are logged in as an administrator in the "monitor" category
- the user who created the dashboard must be the monitor user with the autologin key
