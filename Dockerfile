FROM python:3.6

ADD Hello.py /

CMD [ "python", "./Hello.py" ]
