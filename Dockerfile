FROM land007/node:latest

MAINTAINER Jia Yiqiu <yiqiujia@hotmail.com>

RUN echo $(date "+%Y-%m-%d_%H:%M:%S") >> /.image_times && \
	echo $(date "+%Y-%m-%d_%H:%M:%S") > /.image_time && \
	echo "land007/webrtc" >> /.image_names && \
	echo "land007/webrtc" > /.image_name

#RUN . $HOME/.nvm/nvm.sh && cd / && npm install basic-auth
ADD node /node_

#docker build -t land007/webrtc:latest .
#docker run -it --restart=always -p 20080:80 --name webrtc land007/webrtc:latest
#> docker buildx build --platform linux/amd64,linux/arm64/v8,linux/arm/v7 -t land007/webrtc:latest --push .

