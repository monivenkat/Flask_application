FROM python:3.10
WORKDIR /demo
COPY . /demo
RUN pip install -r requirements.txt
EXPOSE 3000
CMD ["python3", "app.py"]
