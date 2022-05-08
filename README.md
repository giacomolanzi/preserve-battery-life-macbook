# Preserve Battery Life Macbook with Tasmota power Outlet

I use my MacBook Pro as main computer and I love it, but I am lazy too and often forgot to detach the power cable when battery is reasonably full.
Then I realized this simple and useful script that rtuns every 5 minutes to check the level battery and switch of the smart plug in case charging is not needed.

## How to use it

**Attention:** you will need a smart powrt outlet that can be swicthed over local API. I used a Tasmota one, in particular this: [NOUS A1T](https://nous.technology/product/a1t.html), just because it was easily available over Amazon Germany and comes with pre-flashed with Tasmota. With this kind of power socket you'll be able to send commands as API request inside your own WiFi (amazing!).

1. Plug the smart socket in and configure it
2. Write down the socket IP
3. Place the `script.sh inside the `/Users/<username>/.bin` folder
4. Edit the `script.sh` in order to match your BSSID (WiFi name) and socket's IP address
5. Plase the `autoBatteryCharging.plis` file inside the following folder `/Users/giacomolanzi/Library/LaunchAgents/`
