FROM nvidia/cuda:10.0-cudnn7-runtime

COPY resolv.conf /etc/resolv.conf
COPY requirements.txt /requirements.txt

RUN apt update
RUN apt install python3-pip

RUN pip install -r /requirements.txt
RUN jupyter notebook &
