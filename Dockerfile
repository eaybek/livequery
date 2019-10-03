FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/livequery/livequery/ /root/packages/livequery/
WORKDIR /root/packages/livequery
RUN pip3 install /root/packages/livequery

CMD ["python3","test/livequery.py"]


