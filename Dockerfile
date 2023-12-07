FROM python:3.11

WORKDIR /app

COPY . .

RUN apt update && \
    apt install curl php -y

RUN pip3 install requests wget pyshorteners

CMD [ "python3", "dark-phish.py" ]
