FROM jupyter/minimal-notebook:ea01ec4d9f57

COPY resolv.conf /etc/resolv.conf
COPY requirements.txt /requirements.txt

RUN pip install -r /requirements.txt
RUN jupyter notebook &
