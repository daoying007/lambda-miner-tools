curl -fSL https://raw.githubusercontent.com/daoying007/lambda-miner-tools/master/fillbid/fillbid_match.sh -o fillbid_match.sh
curl -fSL https://raw.githubusercontent.com/daoying007/lambda-miner-tools/master/fillbid/start_fillbid_match.sh -o start_fillbid_match.sh
curl -fSL https://raw.githubusercontent.com/daoying007/lambda-miner-tools/master/fillbid/shutdown_fillbid_match.sh -o shutdown_fillbid_match.sh
chmod +x fillbid_match.sh
chmod +x start_fillbid_match.sh
chmod +x shutdown_fillbid_match.sh

echo "parameters: $1 $2"