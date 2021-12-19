FROM jupyter/minimal-notebook:notebook-6.4.6

COPY resolv.conf /etc/resolv.conf
COPY requirements.txt /requirements.txt

USER root

# Juman++ Install
RUN apt update
RUN apt install -y libboost-dev build-essential cmake
WORKDIR /
RUN wget https://github.com/ku-nlp/jumanpp/releases/download/v2.0.0-rc2/jumanpp-2.0.0-rc2.tar.xz
RUN tar xJvf jumanpp-2.0.0-rc2.tar.xz
WORKDIR /jumanpp-2.0.0-rc2
RUN mkdir build
WORKDIR /jumanpp-2.0.0-rc2/build
RUN ls ..
RUN cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local && \
    make && \
    make install

WORKDIR /
RUN rm -rf /jumanpp-2.00-rc2

# Python Library Install
RUN pip install -r /requirements.txt

RUN pip3 install torch==1.10.0+cpu torchvision==0.11.1+cpu torchaudio==0.10.0+cpu -f https://download.pytorch.org/whl/cpu/torch_stable.html

