#FROM jupyter/datascience-notebook
#FROM tensorflow/tensorflow:latest-gpu-py3-jupyter
#FROM tensorflow/tensorflow:latest-gpu-py3
FROM nvidia/cuda:10.0-cudnn7-runtime

ENV http_proxy="http://proxy.noc.kochi-tech.ac.jp:3128"
ENV https_proxy="http://proxy.noc.kochi-tech.ac.jp:3128"

COPY resolv.conf /etc/resolv.conf
COPY requirements.txt /requirements.txt

#RUN apt update
#RUN apt install python3-pip

#RUN pip install -r /requirements.txt
#RUN jupyter notebook &
