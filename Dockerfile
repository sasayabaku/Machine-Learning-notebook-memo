FROM jupyter/minimal-notebook:ea01ec4d9f57

COPY resolv.conf /etc/resolv.conf
COPY requirements.txt /requirements.txt

RUN apt update
RUN apt install python3-pip

RUN pip install -r /requirements.txt
RUN jupyter notebook &
