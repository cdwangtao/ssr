# ssr + 内网穿透

## 常用软件

### x.一键脚本 ssr.sh

~~~shell
# 当前版本:2.0.38
yum install -y wget
wget -N --no-check-certificate https://raw.githubusercontent.com/cdwangtao/ssr/master/ssr.sh && chmod +x ssr.sh && sudo bash ssr.sh
./ssr.sh


# 原版
wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/ssr.sh && chmod +x ssr.sh && sudo bash ssr.sh
./ssr.sh
~~~

参考:

https://github.com/cn2t/doubi-SSR



### x.一键脚本 bbr.sh

很多时候，我们为了给VPS加速，会选择不同的方式，比如[BBR](http://freetribe.me/?tag=bbr)、[锐速](http://freetribe.me/?tag=锐速)等，但单独BBR目前就有普通版、[魔改版](http://freetribe.me/?tag=魔改版)和plus版，加上[锐速](http://freetribe.me/?tag=锐速)，无疑需要很多的脚本，这样在安装上也非常的不方便，而最近，loc论坛的网友又发挥了超人的实力，整出了一个集合BBR、BBR魔改、BBR plus、[锐速](http://freetribe.me/?tag=锐速)四合一的脚本，给我们安装提供了极大的方便。

github项目地址：https://github.com/chiakge/Linux-NetSpeed

~~~shell
# 原版
yum install -y wget
wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
./tcp.sh


wget -N --no-check-certificate "https://raw.githubusercontent.com/cdwangtao/ssr/master/tcp.sh" && chmod +x tcp.sh && sudo bash tcp.sh
./tcp.sh

~~~

参考：http://freetribe.me/?p=546

参考：http://freetribe.me/?p=539

#### 扩展：1.OpenVZ vps 安装BBR加速的两种方法

<https://www.youtube.com/watch?v=lZYfyIrZ91g>

### v2ray相关

#### x.一键脚本 v2ray.sh 233boy

~~~shell
wget -N --no-check-certificate "https://raw.githubusercontent.com/cdwangtao/ssr/master/v2ray.sh" && chmod +x v2ray.sh && sudo bash v2ray.sh
./v2ray.sh

bash <(curl -s -L https://raw.githubusercontent.com/cdwangtao/ssr/master/v2ray.sh)

# 原版1
wget -N --no-check-certificate -O v2ray.sh "https://raw.githubusercontent.com/233boy/v2ray/master/install.sh" && chmod +x v2ray.sh && sudo bash v2ray.sh
./v2ray.sh

# 原版2
bash <(curl -s -L https://git.io/v2ray.sh)
~~~

[https://github.com/233boy/v2ray/wiki/V2Ray一键安装脚本](https://github.com/233boy/v2ray/wiki/V2Ray一键安装脚本)

V2Ray 官网：[https://www.v2ray.com](https://www.v2ray.com/)

MAC: https://233blog.com/post/25/
PC: https://233blog.com/post/24/



~~~shell
默认使用 tcp 安装的
---------- V2Ray 配置信息 -------------
 地址 (Address) = 34.92.2.198
 端口 (Port) = 1521
 用户ID (User ID / UUID) = 5dfc0aa2-49a3-42ea-baf9-db3eb0a79666
 额外ID (Alter Id) = 233
 传输协议 (Network) = tcp
 伪装类型 (header type) = none
---------- END -------------
V2Ray 客户端使用教程: https://233v2.com/post/4/
提示: 输入 v2ray url 可生成 vmess URL 链接 / 输入 v2ray qr 可生成二维码链接

---------- Shadowsocks 配置信息 -------------
 服务器地址 = 34.92.2.198
 服务器端口 = 1520
 密码 = wt520
 加密协议 = aes-128-cfb
 SS 链接 = ss://YWVzLTEyOC1jZmI6d3Q1MjBAMzQuOTIuMi4xOTg6MTUyMA==#233v2.com_ss_34.92.2.198
 备注: Shadowsocks Win 4.0.6 客户端可能无法识别该 SS 链接
提示: 输入 v2ray ssqr 可生成 Shadowsocks 二维码链接

~~~



#### x.官方教程v2ray.sh

V2RAY官方脚本搭建教程！真正无后门脚本！！！  

- V2Ray官网：https://www.v2ray.com/

- V2Ray白话文教程：https://toutyrater.github.io/

- V2Ray官方搭建文字版教程：https://yuan.ga/v2ray-complete-tutorial/


~~WinScp下载：https://winscp.net/eng/download.php~~ 

~~VPS更改时间脚本： https://blog.csdn.net/zx711166/articl...~~

V2Ray客户端下载地址： 

- V2Ray Windows客户端:https://ssr.tools/276其中,图形化界面下载失效,用下面链接 
- V2Ray Windows客户端图形化界面地址：https://github.com/2dust/v2rayN/releases (下载v2rayN.zip ) 
- V2Ray安卓客户端：https://github.com/2dust/v2rayNG/releases

- V2Ray mac客户端：https://github.com/Cenmrev/V2RayX/releases

- ~~V2Ray苹果IOS客户端安装：https://youtu.be/jxBkhHGzWt~~



参考教程：https://yuan.ga/v2ray-complete-tutorial/>

~~~shell
linux vps如何修改时区 linux vps时区设置
# date -R
Thu, 11 Jul 2019 15:06:19 +0000
# 更改时间
rm -rf /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# 安装
bash <(curl -L -s https://install.direct/go.sh)
# 上列命令会自动安装 V2Ray，然后执行下面命令运行
systemctl start v2ray

PORT:39970
UUID:9336fe6e-ca5d-4cfc-ac76-c397c1bc619a

sudo systemctl enable v2ray

sudo systemctl start v2ray
sudo systemctl stop v2ray
sudo systemctl restart v2ray
# 配置 V2Ray
# 通过下方命令编辑配置文件：
vim /etc/v2ray/config.json
# 查看状态
sudo systemctl status v2ray
~~~

~~~shell
{
  "inbounds": [
    {
      "port": 443, // Vmess 协议服务器监听端口
      "protocol": "vmess",
      "settings": {
        "clients": [
          {
            "id": "88888888-8888-8888-8888-123456789012", // id(UUID) 需要修改
            "level": 1,
            "alterId": 64
          }
        ]
      }
    },
    {
      "port": 1520, // SS 协议服务端监听端口
      "protocol": "shadowsocks",
      "settings": {
        "method": "chacha20-ietf", // 加密方式
        "password": "wt520" //密码
      }
    }
  ],
  "outbounds": [{
    "protocol": "freedom",
    "settings": {}
  },{
    "protocol": "blackhole",
    "settings": {},
    "tag": "blocked"
  }],
  "routing": {
    "rules": [
      {
        "type": "field",
        "ip": ["geoip:private"],
        "outboundTag": "blocked"
      }
    ]
  }
}

~~~

#### x.ws+tls

~~~shell
# V2Ray高级
Websocket+TLS
#免费域名申请+IP解析

~~~





### x.BestTrace快速测试网络的软件，购买VPS前必备

http://freetribe.me/?p=9

windows版本下载的地址：[点击下载](http://freetribe.me/soft/besttrace.exe)

安卓版本：[点击下载](https://cdn.ipip.net/17mon/besttrace.apk)

苹果手机商店：[点击下载](https://itunes.apple.com/cn/app/best-trace/id1026747589?ls=1&mt=8)



### x.测速脚本

<https://github.com/FunctionClub/ZBench>

~~~shell

~~~

### x.工具 ip和端口监测

最近出现了一些SS/SSR代理连不上的情况，服务器IP能Ping通，SSH甚至也能远程，但是SS/SSR代理就是超时连不上，针对这个情况昨天咨询了业内人士，今天给大家简单的说明一下，以及提供一些解决办法。
ip快速检测
https://ipcheck.need.sh/
端口检测工具：
https://torch.njs.app/



## 内网穿透

### 1.frp

frp内网穿透比ngrok要简单的多，无需多复杂的配置就可以达到比较好的穿透效果，扩展性也很强

参考：https://www.vediotalk.com/?p=505

~~~shell
git官方：
https://github.com/fatedier/frp/releases
当前版本：v0.27.0

# linux版本:
https://github.com/fatedier/frp/releases/download/v0.27.0/frp_0.27.0_linux_amd64.tar.gz
# windows版本：
https://github.com/fatedier/frp/releases/download/v0.27.0/frp_0.27.0_windows_amd64.zip

# linux下载软件
wget -N --no-check-certificate https://github.com/fatedier/frp/releases/download/v0.27.0/frp_0.27.0_linux_amd64.tar.gz
tar -zxvf frp_0.27.0_linux_amd64.tar.gz
mv frp_0.27.0_linux_amd64 frp
# 6.配置服务端：
vi ./frps.ini
[common]
bind_port = 7000        #与客户端绑定的进行通信的端口
vhost_http_port = 80    #访问客户端web服务自定义的端口号
vhost_https_port = 443

# 可以看看端口和ss是否正常
netstat -tunlp |grep 80
ps -ef|grep frps

# 启动服务端
临时启动
./frps -c ./frps.ini
后台保持启动
nohup ./frps -c ./frps.ini &
[root@xxx frp]# ./frps -c ./frps.ini
2019/06/29 11:33:47 [I] [service.go:139] frps tcp listen on 0.0.0.0:7000
2019/06/29 11:33:47 [I] [service.go:181] http service listen on 0.0.0.0:80
2019/06/29 11:33:47 [I] [service.go:202] https service listen on 0.0.0.0:443
2019/06/29 11:33:47 [I] [root.go:204] Start frps success
停止：
# 1.运行
nohup ./frps -c frps.ini >/dev/null 2>&1 &
# 或者客户端:
nohup ./frpc -c ./frpc.ini >/dev/null 2>&1 &

ps -aux|grep frp| grep -v grep
kill -9 xxxx

五、配置客户端
vi ./frpc.ini
[common]  
server_addr = 120.56.37.48      #公网服务器ip  
server_port = 7000              #与服务端bind_port一致  
  
#公网通过ssh访问内部服务器  
[ssh]  
type = tcp                      #连接协议  
local_ip = 127.0.0.1            #内网服务器ip  
local_port = 22                 #ssh默认端口号  
remote_port = 6000              #自定义的访问内部ssh端口号  
  
#公网访问内部web服务器以http方式  
[web]  
type = http                     #访问协议
local_ip = 127.0.0.1            #内网服务器ip 
local_port = 80                 #内网web服务的端口号  
custom_domains = www.veelove.cn,veelove.cn   
#所绑定的公网服务器域名，一级、二级域名都可以，绑定多个域名时用英文“,”分开
六、启动客户端
临时启动
./frpc -c ./frpc.ini
后台保持启动
nohup ./frpc -c ./frpc.ini &


七、穿透公司代理内网
1.修改服务端配置文件
vi ./frps.ini
[common]
bind_port = 443        #端口号修改为443
vhost_http_port = 80    #访问客户端web服务自定义的端口号 
2.修改客户端配置文件
vi ./frpc.ini
[common]
server_addr = 118.24.127.138
server_port = 443                            #端口号修改为443
http_proxy = http://10.168.57.241:8088       #加入公司代理地址

[ssh]
type = tcp
local_ip = 127.0.0.1
local_port = 22
remote_port = 6000

[web]
type = http
local_ip = 127.0.0.1
local_port = 80
custom_domains = www.veelove.cn
服务端与客户端启动方式不变，参照四、六。
~~~

#### 1.1.创建frps服务

~~~shell
# ps -aux|grep frp| grep -v grep
# kill -9 xxxx
# netstat -tunlp |grep 80
# ps -ef|grep frps

cat <<EOF | sudo tee /etc/systemd/system/frps.service
[Unit]
Description=frps

[Service]
TimeoutStartSec=0
ExecStart=/root/frp/frps -c /root/frp/frps.ini

[Install]
WantedBy=multi-user.target
EOF

# 服务的操作
systemctl enable frps
systemctl start frps
systemctl stop frps
systemctl restart frps
systemctl status frps -l

~~~

#### 1.2创建frpc服务

~~~shell
# ps -aux|grep frp| grep -v grep
# kill -9 xxxx
# netstat -tunlp |grep 80
# ps -ef|grep frps

cat <<EOF | sudo tee /etc/systemd/system/frpc.service
[Unit]
Description=frpc

[Service]
TimeoutStartSec=0
ExecStart=/root/frp/frpc -c /root/frp/frpc.ini

[Install]
WantedBy=multi-user.target
EOF

# 服务的操作
systemctl enable frpc
systemctl start frpc
systemctl stop frpc
systemctl restart frpc
systemctl status frpc -l

~~~





## 各大软件下载

### ssr-安卓

3.4.0.8

https://github.com/shadowsocksr-backup/shadowsocksr-android/releases/

3.5.4

https://github.com/doio/Akkariiin-shadowsocksr-android/releases



https://github.com/zyfworks/ssr-backup

https://github.com/yu19930123/shadowsocksr-android/releases  Fork from <https://github.com/shadowsocksr/shadowsocksr-android>

### ssr-windows

https://github.com/shadowsocksrr/shadowsocksr-csharp/releases

### ssr-mac

https://github.com/shadowsocksr-backup/ShadowsocksX-NG/releases