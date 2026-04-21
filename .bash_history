pkg upgrade
pkg update
su
python --version
pkg update -y
pkg install python nano zip -y
python --version
mkdir site-razaele
cd site-razaele
nano index.html
ls
cat index.html
python -m http.server 8080
"GET / HTTP/1.1" 200
adding: site-razaele/index.html (deflated 65%)
~/site-razaele $ zip -r site-razaele.zip site-razaele
termux-setup-storage
cp site-razaele.zip /sdcard/
termux-setup-storage
cp site-razaele.zip /sdcard/
🎉 Site is live
https://razaelestore.netlify.app
pkg update -y && pkg install nmap -y
ifconfig wlan0
nmap -sn 192.168.1.0/24
Nmap scan report for 192.168.1.1
Host is up (0.0023s latency).
MAC Address: B8:27:EB:XX:XX:XX (Router)
Nmap scan report for 192.168.1.3
Host is up (0.050s latency).
MAC Address: A4:50:46:XX:XX:XX (Samsung)
Nmap scan report for 192.168.1.5
Host is up (0.000073s latency).
MAC Address: 02:00:00:XX:XX:XX (CIDEA)
ip neigh show
nano surveillance.sh
nmap -sn 192.168.1.0/24 > ~/intrus_wifi.txt
pkg install wireless-tools -y
iwlist wlan0 scan | grep -E "ESSID|Encryption|WPS"nano boost.sh
nano boost.sh
boost.sh
bash boost.sh
chmod +x boost.sh
./boost.sh
echo 'alias boost="~/boost.sh"' >> ~/.bashrc
source ~/.bashrc
boost
cd ~/coigny-bot
npm install @whiskeysockets/baileys@latest
rm -rf session
cd ~/coigny-bot
nano index.js
node index.js
index.js startCOIGNY():
cd ~/coigny-bot
rm -rf node_modules package-lock.json
npm cache clean --force
npm install @whiskeysockets/baileys@latest
rm -rf session
node index.js
nano index.js
cd ~/coigny-bot
ls
node index.js
pkg update -y
pkg install termux-api -y
nano ~/turbo_batt.sh
chmod +x ~/turbo_batt.sh
./turbo_batt.sh
mkdir -p ~/.termux/boot
echo "termux-wake-lock" >> ~/.termux/boot/start.sh
echo "~/turbo_batt.sh &" >> ~/.termux/boot/start.sh
chmod +x ~/.termux/boot/start.sh
nano ~/nom_du_script.sh
chmod +x ~/nom_du_script.sh
./nom_du_script.sh
pkg update -y
pkg upgrade -y
pkg install nodejs-lts git -y
node -v
mkdir ~/wa-bot
cd ~/wa-bot
npm init -y
npm install @whiskeysockets/baileys qrcode-terminal
stall nodejs-lts git ffmpeg imagemagick -y
mkdir ~/coigny-bot && cd ~/coigny-bot
npm init -y
npm install @whiskeysockets/baileys qrcode-terminal axios
nano index.js
node index.js
