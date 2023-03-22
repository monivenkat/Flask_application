FROM ubuntu:latest
WORKDIR /demo
COPY . /demo
RUN set -xe \
    && apt-get update \
    && y | apt-get install python3-pip
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 3000
CMD ["python3", "app.py"]
