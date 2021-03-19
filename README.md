# Audible Battery Status Alerter
[![Linux Manjaro](https://img.shields.io/badge/Linux-Manjaro-blue.svg)](https://manjaro.org/)
---
## Description
Are you using a laptop with linux?
Didn't you notice that the battery was low... or fully charged?
Do you want to take care of your battery?

This application is for u!
ABSA is an alerter that makes a sound when the baterry is charged, 
when is half full, when is less than half full, and even the app
will shut down the laptop when the battery is 3% or less to prevent
any damage due to an unexpected power outage!

## Install and Usage
Adjust cron to run the script every X minutes to your liking.
```sh
crontab -e
```
Marfullsen config: (every 1 minute)
*/1 * * * * /bin/sh /home/marfullsen/audible-battery-status-alerter.sh

__The included sounds should be in the same directory, unless you configure it manually.__

## About the default config
__While Charging__
| Percentage | Sound |
| --- | --- |
| 100 | .ogg sound |

__While discharging__
| Percentage | Beep |
| --- | --- |
| 40% | 0.05 |
| 35% | 0.05 |
| 30% | 0.05 |
| 25% | 0.05 |
| 20% | 0.05 |
| 15% | 1 |

__WHEN LESS THAN 3%__
>poweroff

## Debug
Feel free to inspect the script and modify the code.

if you want to test a particular case, uncomment the line 9.
``` 
#battery=00
```

