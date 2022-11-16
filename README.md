# divera247-raspberry-pi
Divera24/7 Dashboard installation on a Raspberry-Pi

## Prerequisites
- Unmodified Raspian distribution
- Monitor user in DIVERA 24/7
- One DIVERA 24/7 dashboard

## Attention
Changes related to the Pi's autostart may break functionality.


## Installation

### Execute installtion script
```
cd /home/pi/Desktop
git clone https://github.com/janwolzenburg/divera247-raspberry-pi
cd divera247-raspberry-pi
sudo chmod +x installDivera.sh
sudo ./installDivera.sh
```

### Notes
- enter dashboard-ID and autologin key
- the dashboard-ID is visible in the dashboard overview when logged in as a DIVERA 24/7 user
- the autologin key is visible when you are logged in as an administrator for a monitor user
- the user who created the dashboard must be the monitor user with the autologin key
