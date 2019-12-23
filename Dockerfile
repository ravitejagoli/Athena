FROM python:3.6-alpine

ADD Hello.py /

RUN pip install pystrich

CMD [ "python", "./Hello.py" ]
