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