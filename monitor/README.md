# Lambda挖矿程序自动监控

作者：daoying007 <daoying007@gmail.com>

作者 ETH 地址：`0xC53D71abA6C29F284836d76Df75a4967Cd96acf9` 欢迎打赏

## 主要功能
解决了官方挖矿进程偶尔异常挂掉的问题。
本脚本使用的方案是：使用crontab自动化每分钟检查一次，挖矿进程异常挂掉时会自动重启。
当然其实更好的方案是用户supervisor守护进程，但是但是对小白来说有一定使用难度，所以本脚本使用简单的方案，方便小白使用。
如果你会使用docker，可以直接使用我制作的挖矿程序docker镜像（https://github.com/daoying007/lambda-miner-docker），已经内置了supervisor守护进程，实时守护防止挖矿进程异常挂掉


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


1. 启动监控脚本
```bash
./start_monitor.sh name
```
命令行中的 `name` 改成你的Lambda账号名，回车，然后输入Lambda账号的密码

4. 停止刷单命令：
```
./shutdown_monitor.sh
```



## daoying007 开发的Lambda挖矿工具

1. lambda挖矿自动化定时刷单工具，使用文档：https://github.com/daoying007/lambda-miner-tools/blob/master/fillbid/README.md
2. 解决了官方挖矿进程偶尔异常挂掉的问题（自动化每分钟检查一次，挖矿进程异常挂掉时会自动重启），使用文档：https://github.com/daoying007/lambda-miner-tools/blob/master/monitor/README.md
3. Lambda 挖矿程序 docker 镜像，使用文档：https://github.com/daoying007/lambda-miner-docker
