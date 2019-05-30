curl -fSL https://raw.githubusercontent.com/daoying007/lambda-miner-tools/master/fillbid/fillbid_match.sh -o fillbid_match.sh
curl -fSL https://raw.githubusercontent.com/daoying007/lambda-miner-tools/master/fillbid/start_fillbid_match.sh -o start_fillbid_match.sh
curl -fSL https://raw.githubusercontent.com/daoying007/lambda-miner-tools/master/fillbid/shutdown_fillbid_match.sh -o shutdown_fillbid_match.sh
chmod +x fillbid_match.sh
chmod +x start_fillbid_match.sh
chmod +x shutdown_fillbid_match.sh
echo "脚本下载安装完成，请运行如下命令启动脚本：./start_fillbid_match.sh 订单id Lambda账号名"