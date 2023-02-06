FROM python:3.11.1-alpine AS builder
WORKDIR /opt/hello-python
COPY . .
RUN pip install flask
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
