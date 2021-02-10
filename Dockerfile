FROM ubuntu
WORKDIR /src
ADD . /src
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -yqq
RUN apt install -yqq git

RUN ./ci-base/docker_install.sh
RUN ./ci-base/install_sysbench.sh docker

CMD ./run.sh
