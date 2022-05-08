# Preserve Battery Life MacBook with Tasmota power Outlet

I use my MacBook Pro as main computer and I love it, but I am lazy too and often forgot to detach the power cable when battery is reasonably full.
Then I realized this simple and useful script that rtuns every 5 minutes to check the level battery and switch of the smart plug in case charging is not needed.

## How to use it

**Attention:** you will need a smart powrt outlet that can be swicthed over local API. I used a Tasmota one, in particular this: [NOUS A1T](https://nous.technology/product/a1t.html), just because it was easily available over Amazon Germany and comes with pre-flashed with Tasmota. With this kind of power socket you'll be able to send commands as API request inside your own WiFi (amazing!).

1. Plug the smart socket in and configure it
2. Write down the socket IP
3. Download the files
4. Edit `script.sh`
  * Line 14 and 15: insert the IP address of the smart plug
  * In line 19: Insert the BSSID of your WiFi
5. Edit `autoBatteryCharging.plis`
  * Line 9: Insert your username instead of `<username>`
  * Optional in line 12: change the interval of the script. Default is setting for 5 minutes (300 sec.)
6. Execute the following commands in terminal

```bash
mkdir /User/<username>/.bin
cp script.sh /User/<username>/.bin
cp autoBatteryCharging.plis /Users/<usernmae>/Library/LaunchAgents/
```

Now your Mac will check every 5 minutes your WiFi, battery level and Backup status. The script will send command to the smart plug only if the WiFi is the one you have selected AND there is not backup running. 
It will check the battery level and switch on the plug under 15% as well switch it off at 92%.

Enjoy!
