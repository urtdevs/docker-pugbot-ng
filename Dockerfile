FROM dock0/arch
MAINTAINER Jon Chen <bsd@voltaire.sh>

RUN pacman -Syu --noconfirm --needed python python-pip

ADD ./pugbot_ng/requirements.txt /srv/pugbot_ng/requirements.txt
ADD ./pugbot_ng/pugbot_ng.py /srv/pugbot_ng/pugbot_ng.py
ADD ./config.json /srv/pugbot_ng/config.json

RUN /usr/bin/pip3 install -r /srv/pugbot_ng/requirements.txt

ADD run /service/pugbot_ng/run
