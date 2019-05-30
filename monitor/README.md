# Lambda挖矿程序自动监控

作者：daoying007 <daoying007@gmail.com>

作者 ETH 地址：`0xC53D71abA6C29F284836d76Df75a4967Cd96acf9` 欢迎打赏

## 主要功能
解决了官方挖矿进程偶尔异常挂掉的问题（自动化每分钟检查一次，挖矿进程异常挂掉时会自动重启）


## 使用说明

1. 进入 `lambda_miner_x.x.x` 目录
```bash
cd lambda_miner_x.x.x
```
注意：请将命令行中的 `x.x.x` 改成对应的lambda挖矿程序的版本号，如 `0.1.2`

2. 运行如下命令下载安装脚本：
```bash
curl -fsSL https://raw.githubusercontent.com/daoying007/lambda-miner-tools/master/monitor/install.sh | bash
```
等待下载安装完成


3. 启动定时刷单脚本
```bash
./monitor.sh name
```
命令行中的 `name` 改成你的Lambda账号名，回车，然后输入Lambda账号的密码


## daoying007 开发的其他Lambda挖矿工具

1. lambda挖矿自动化定时刷单工具，使用文档：https://github.com/daoying007/lambda-miner-tools/blob/master/fillbid/README.md
2. 解决了官方挖矿进程偶尔异常挂掉的问题（自动化每分钟检查一次，挖矿进程异常挂掉时会自动重启），使用文档：https://github.com/daoying007/lambda-miner-tools/blob/master/monitor/README.md
3. Lambda 挖矿程序 docker 镜像，使用文档：https://github.com/daoying007/lambda-miner-docker