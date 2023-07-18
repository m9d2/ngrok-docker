# ngrok-docker

### 快速开始

clone代码到本地
```shell
git clone https://github.com/m9d2/ngrok-docker.git
```

构建镜像
```shell
docker build -t ngrok:1.0 .
```
启动容器
```shell
./start.sh
```

### 配置修改
在构建镜像前需要修改域名，将NGROK_DOMAIN变量值修改成你自己的域名

```shell
export NGROK_DOMAIN="xxx.com"
```

修改start.sh域名

```shell
-domain="xxx.com"
```

### 下载客户端

将客户端从容器下载到本地
```shell
docker cp ngrok:/ngrok/bin ~/ngrok/
```

### 如何启动客户端
#### windows

配置ngrok.cfg

```
server_addr: "xxx.com:4443"
trust_host_root_certs: false
```

启动客户端

http
```shell
ngrok.exe -subdomain=ngrok -config=ngrok.cfg 80
```

tcp
```shell
ngrok.exe -proto=tcp -config=ngrok.cfg start ssh

```

#### mac

配置ngrok.yml

```
server_addr: "xxx.com:4443"
trust_host_root_certs: false
```

启动客户端

http
```shell
./ngrok -config ngrok.yml -subdomain=ngrok 4080
```

tcp
```shell
./ngrok -config ngrok.yml -subdomain=ngrok start ssh

```