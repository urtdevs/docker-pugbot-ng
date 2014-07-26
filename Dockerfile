FROM dock0/arch
MAINTAINER Jon Chen <bsd@voltaire.sh>

RUN pacman -Syu --no-confirm --needed python python-pip

ADD ./pugbot-ng/requirements.txt /srv/pugbot-ng/requirements.txt
ADD ./pugbot-ng/pugbot-ng.py /srv/pugbot-ng/pugbot-ng.py
ADD ./config.json /srv/pugbot-ng/config.json

RUN /usr/bin/pip3 install -r /srv/pugbot-ng/requirements.txt

ADD run /service/pugbot-ng/run
