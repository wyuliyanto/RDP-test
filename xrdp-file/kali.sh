#echo -e "$123\n$123\n" | sudo passwd
echo "Download Ngrok"
wget https://raw.githubusercontent.com/RizzyFuzz/storage/main/ngrok.sh && chmod +x ngrok.sh && ./ngrok.sh
echo "===================================="
echo "===================================="
echo "Install RDP"
echo "===================================="
docker pull danielguerra/ubuntu-xrdp
clear
echo "===================================="
echo "Start RDP"
echo "===================================="
echo "===================================="
#echo "Username : RizzyFuzz-kalilinux"
#echo "Password : trstmeboy"
echo "RDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "===================================="
docker run --rm -p 3388:3389 danielguerra/ubuntu-xrdp:kali > /dev/null 2>&1
