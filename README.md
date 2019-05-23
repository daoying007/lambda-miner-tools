# Lambda矿工工具

作者：daoying007 <daoying007@gmail.com>

作者 ETH 地址：`0xC53D71abA6C29F284836d76Df75a4967Cd96acf9` 欢迎打赏

## 主要功能
自动化定时（每半小时）指定一个卖单进行订单匹配并且上传文件


## 使用说明

1. 进入 `lambda_miner_0.1.1` 下的 `fillbid` 目录
```bash
cd lambda_miner_0.1.1/fillbid
```

2. 运行如下命令下载安装脚本：
```bash
curl -fsSL https://raw.githubusercontent.com/daoying007/lambda-miner-tools/master/fillbid/install.sh | bash
```
等待下载安装完成

3. 启动定时刷单脚本
```bash
./start_fillbid_match.sh [askid] [name]
```
命令行中的`[askid]`改成你需要刷的卖单id，`[name]`改成你的Lambda账号名
然后输入Lambda账号的密码，回车

4. 刷单脚本每半小时刷一次，半小时后查看刷单日志，看是否有正常刷单
```bash
tail -f -n 500 fillbid.log
```

## daoying007 开发的其他Lambda挖矿工具

1. Lambda 挖矿程序 docker 镜像，github地址：https://github.com/daoying007/lambda-miner-docker
2. Lambda 挖矿程序 docker 镜像，Docker Hub 地址：https://hub.docker.com/r/daoying007/lambda-miner/