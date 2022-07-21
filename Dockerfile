FROM alpine:3.14
RUN apk --update add python3 py3-pip
RUN pip3 install Flask
RUN mkdir app
COPY app.py /app
CMD ["python3", "/app/app.py"]