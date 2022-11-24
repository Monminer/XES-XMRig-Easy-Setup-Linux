echo Welcome to XEM!
echo Installing required things....
sudo apt install jq cpufrequtils -y
echo Cleaning up...
mkdir tmp
mv Setup.sh tmp
rm *
rm -r xmrig*
cd tmp
mv Setup.sh ..
cd ..
echo Installing XMRig....
cd tmp
wget https://github.com/xmrig/xmrig/releases/download/v6.18.1/xmrig-6.18.1-focal-x64.tar.gz
cd ..
tar -xvf tmp/xmrig*
cd tmp
rm *
cd ..
cd XEM_req && sh config.sh
