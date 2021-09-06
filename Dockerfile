# Using Python Slim-Buster
FROM xluxz/freeproject:buster
# RAM-UBOT
# Geez-UserBot
#yaudah iya

RUN git clone -b RAM-UBOT https://github.com/rxyzyn/FREE-UBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/rxyzyn/FREE-UBOT/FREE-UBOT/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3","-m","userbot"]
