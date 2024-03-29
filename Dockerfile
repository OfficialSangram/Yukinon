FROM python:3.8.5-slim-buster

WORKDIR /Yukinon
COPY . /Yukinon

RUN pip install --upgrade pyrogram
RUN pip install gitpython
RUN pip3 install -U pip
COPY requirements.txt .
RUN pip3 install -r requirements.txt
ENV PATH="/home/bot/bin:$PATH"

CMD [ "python3", "-m" , "Yukinon"]
