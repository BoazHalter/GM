FROM python:3.8-alpine
RUN mkdir /app
ADD ./src /app
WORKDIR /app
CMD ["python3", "app.py"]
