FROM python:3.8-slim
WORKDIR /app/
COPY pyproject.toml ./
RUN pip install --upgrade pip && pip install .
COPY fastchat/ ./fastchat/
