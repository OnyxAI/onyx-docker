FROM debian
LABEL Author Aituglo <contact@aituglo.com>

RUN apt-get update && apt-get install -y git wget unzip cmake
RUN git clone https://github.com/OnyxAi/onyx

RUN bash onyx/install_debian_script.sh

RUN bash onyx/setup.sh

WORKDIR /onyx

EXPOSE 8080

CMD ./onyx.sh start; pm2 log

