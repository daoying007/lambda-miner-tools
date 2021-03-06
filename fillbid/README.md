# Lambda矿工自动化定时定向刷单工具及使用方法

作者：daoying007 <daoying007@gmail.com>

作者 ETH 地址：`0xC53D71abA6C29F284836d76Df75a4967Cd96acf9` 欢迎打赏

## 主要功能
1. 自动化定时（每5分钟一次）指定一个卖单进行订单匹配并且上传文件
2. 在目前预主网不稳定的情况下，通过本公举你就不需要一直守着矿机不停测试了


## 使用说明

1. 进入 `lambda_miner_x.x.x` 下的 `fillbid` 目录
```bash
cd lambda_miner_x.x.x/fillbid
```
注意：请将命令行中的 `x.x.x` 改成对应的lambda挖矿程序的版本号，如 `0.1.2`

2. 运行如下命令下载安装脚本：
```bash
curl -fsSL https://raw.githubusercontent.com/daoying007/lambda-miner-tools/master/fillbid/install.sh | bash
```
等待下载安装完成


3. 启动定时刷单脚本
```bash
./start_fillbid_match.sh askid name
```
命令行中的 `askid` 改成你需要刷的卖单id，`name` 改成你的Lambda账号名

然后输入Lambda账号的密码，回车

如显示类似 `crontab: no crontab for ubuntu` 这样的信息可以忽略

完成后，可以运行 `crontab -l`，如看到类似如下文字表示计划任务已添加成功

`*/5 * * * * /home/ubuntu/lambda_miner_0.1.1/fillbid/fillbid_match.sh 8d50c73b77ca983536a6df5069bf7b4dcc589d48 账号名 密码`


4. 刷单脚本每5分钟刷一次，5分钟后查看刷单日志，看是否有正常刷单
```bash
tail -f -n 500 fillbid.log
```


5. 停止刷单命令：
```
./shutdown_fillbid_match.sh
```



## 更多 daoying007 原创Lambda挖矿工具、教程

1. Lambda矿工自动化定时定向刷单工具及使用方法：https://github.com/daoying007/lambda-miner-tools/blob/master/fillbid/README.md
2. 解决官方挖矿进程偶尔异常挂掉工具及使用方法：https://github.com/daoying007/lambda-miner-tools/blob/master/monitor/README.md
3. 公网IP、DMZ配置/端口映射等问题解决教程：https://github.com/daoying007/lambda-miner-tools/blob/master/network-config/README.md
4. Lambda 挖矿程序 docker 镜像及使用文档：https://github.com/daoying007/lambda-miner-docker