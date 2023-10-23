FROM python:alpine

ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt

EXPOSE 5000
VOLUME /etc/haproxy

ENV FLASK_APP=server.py
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]

