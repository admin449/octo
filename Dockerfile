FROM mysterysd/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install -U -r requirements.txt

COPY . .

EXPOSE 80

CMD ["bash", "start.sh"]
