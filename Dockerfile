FROM ubuntu:22.04

WORKDIR /app

COPY src /app

RUN apt-get update && \
    apt-get install -y python3

EXPOSE 8000

CMD ["python3", "-m", "http.server", "8000"]
