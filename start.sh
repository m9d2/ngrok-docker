docker run -it --name ngrok -p 8000:8000 -p 8001:8001 -p 4443:4443 -v /root/ngrok/bin:/root/ngrok/bin/ -d ngrok:1.0 /ngrok/bin/ngrokd -domain="m9d2.cn" -httpAddr=":8000" -httpsAddr=":8001"