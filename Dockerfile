FROM python:3.9

WORKDIR /wsgi

COPY requirements.txt /wsgi/

RUN pip install -r requirements.txt

COPY . /wsgi

EXPOSE 3006

CMD ["flask", "run", "--host=0.0.0.0", "--port=3006"]
