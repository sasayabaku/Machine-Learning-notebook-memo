FROM jupyter/minimal-notebook:notebook-6.4.6

SHELL [ "/bin/bash", "-c" ]

USER root

RUN apt update 
RUN apt install -y curl gcc g++

# Install Rust
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH=$PATH:$HOME/.cargo/bin

# Install Python Library
RUN pip install -qU torch==1.11.0 torchtext==0.12.0 torchvision==0.12.0 ipywidgets streamlit
RUN pip install -q transformers==4.4.2 pytorch_lightning==1.2.1 sentencepiece

USER jovyan