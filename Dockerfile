FROM nvidia/cuda:11.7.1-runtime-ubuntu20.04
RUN apt-get update -y && apt-get install -y python3 python3-pip 
RUN ln -s /usr/bin/python3 /usr/bin/python & \
    ln -s /usr/bin/pip3 /usr/bin/pip
WORKDIR /app/
COPY pyproject.toml ./
RUN pip install --upgrade pip && pip install .
COPY fastchat/ ./fastchat/
