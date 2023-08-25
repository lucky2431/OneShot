#!/data/data/com.termux/files/usr/bin/bash
apt remove -y game-repo science-repo
pkg install -y root-repo
pkg install -y git tsu python wpa-supplicant pixiewps iw

git clone --depth 1 https://github.com/Lunatik-cyber/OneShot OneShot

chmod +x /data/data/com.termux/files/home/OneShot/oneshot.py
chmod +x /data/data/com.termux/files/home/OneShot/wifi_connect.sh
echo "cd /data/data/com.termux/files/home/OneShot; sudo python3 oneshot.py --iface-down -i wlan0 -K -w" > /data/data/com.termux/files/usr/bin/hack
echo "clear; sudo cat /data/data/com.termux/files/home/OneShot/reports/stored.txt" > /data/data/com.termux/files/usr/bin/hacked
chmod +x /data/data/com.termux/files/usr/bin/hack
chmod +x /data/data/com.termux/files/usr/bin/hacked
clear
printf "#########################################################
#  All done! Now you can run OneShot with:
#   sudo python3 OneShot/oneshot.py -i wlan0 -K or hack
#
#  To update, run:
#   (cd OneShot && git pull)
#
#  To see hacked networks:
#    hacked
#########################################################\n"
