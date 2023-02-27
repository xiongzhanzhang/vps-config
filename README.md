vps安装nps网穿透、doh服务器、文件服务器脚本，特点：
- 基于caddy，可自动配置证书
- 可使用ipv6机器
- 一键安装，只需要在run.sh中配置下域名和nps登录密码

使用方式如下：

``` sh
# install
git clone https://github.com/xiongzhanzhang/vps-config.git
cd vps-config
sudo bash init.sh

# config domain and passwd
vi run.sh

# start service
sudo bash run.sh
```

域名规划如下所示，将下列域名映射到vps：
- www.youdomian.com : 文件服务器
- nps.youdomian.com : 内网穿透服务器
- doh.youdomian.com : doh服务器
- *.nas.youdomian.com : 内网服务预留的域名


