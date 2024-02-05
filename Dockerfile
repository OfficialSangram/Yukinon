FROM python-3.12.1

WORKDIR /Yukinon
COPY . /Yukinon

RUN pip install --upgrade pyrogram
RUN pip3 install -U pip
COPY requirements.txt .
RUN pip3 install -r requirements.txt

CMD ["bash", "start"]
