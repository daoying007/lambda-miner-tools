curl -fSL https://raw.githubusercontent.com/daoying007/lambda-miner-tools/master/monitor/start_monitor.sh -o start_monitor.sh
curl -fSL https://raw.githubusercontent.com/daoying007/lambda-miner-tools/master/monitor/shutdown_monitor.sh -o shutdown_monitor.sh
chmod +x start_monitor.sh
chmod +x shutdown_monitor.sh
echo "脚本下载安装完成，请运行如下命令启动脚本：./start_monitor.sh Lambda账号名"