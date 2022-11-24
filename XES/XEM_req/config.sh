echo Welcome to config setup for XEM!
echo
echo What is your wallet address?
read wallet
echo What pool do you want to connect to?
read pool
echo How many threads do you want to use?
read threads
echo What do you want this "worker's" ID to be?
read worker
echo 
echo Creating config...
rm config.json
touch config.json
echo "{" >> config.json
echo '"'config'"': "{" >> config.json
echo '"'wallet'"':'"'$wallet'"', >> config.json
echo '"'pool'"':'"'$pool'"', >> config.json
echo '"'threads'"':'"'$threads'"', >> config.json
echo '"'rigid'"':'"'$worker'"' >> config.json
echo "}" >> config.json
echo "}" >> config.json
echo Done!
