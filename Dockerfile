FROM continuumio/miniconda3
WORKDIR /root/app/
COPY pyproject.toml ./
RUN pip install --upgrade pip && pip install .
#COPY fastchat/ fastchat/