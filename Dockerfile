FROM dock0/arch
MAINTAINER Jon Chen <bsd@voltaire.sh>

RUN pacman -Syu --noconfirm --needed python python-pip

ADD ./config.json /etc/pugbot_ng.json

RUN /usr/bin/pip3 install pugbot_ng

ADD run.py /usr/local/bin/run.py
ADD run /service/pugbot_ng/run
