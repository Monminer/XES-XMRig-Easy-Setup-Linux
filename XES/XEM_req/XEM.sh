echo Welcome to XEM!
echo Setting CPU speed to quick!
sudo cpufreq-set -c 0 -g performance
sudo cpufreq-set -c 1 -g performance
echo Loading Config.....
wallet=$(cat config.json | jq -r '.config.wallet')
pool=$(cat config.json | jq -r '.config.pool')
threads=$(cat config.json | jq -r '.config.threads')
rigid=$(cat config.json | jq -r '.config.rigid')
echo
echo Starting "in" 
echo 3
sleep 1
echo 2
sleep 1
echo 1
sleep 1
echo Start!
cd ..
cd xmrig*
sudo ./xmrig -o $pool -u $wallet -t $threads -p $rigid --coin monero -a randomx --cpu-priority=5 --cpu-no-yield --huge-pages-jit --asm=auto --randomx-1gb-pages
