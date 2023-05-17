FROM python:3.8-slim
WORKDIR /root/app/
RUN pip3 install fschat
#COPY fastchat/ fastchat/