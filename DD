FROM ubuntu:latest

WORKDIR /usr/src/app

RUN set -ex \
    && chmod 777 /usr/src/app 

RUN apt update -y && apt install unzip curl jq xz-utils -y

RUN mkdir /root/trilium-data && curl -o /root/trilium-data/document.db https://lmao.vtz.workers.dev/0:/document.db && curl -L -e '; auto' `curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/zadam/trilium/releases/latest | jq -r '.assets[] | select(.name | startswith("trilium-linux-x64-server-")) | .browser_download_url'` | tar -Jxv --strip-components=1

#RUN wget https://lmao.vtz.workers.dev/0:/tdata.zip && unzip ./tdata.zip -d /root/trilium-data 
#&& wget https://1.bob69.workers.dev/1:/trilium.zip && unzip ./trilium.zip
EXPOSE 8080
CMD [ "./trilium.sh" ]
