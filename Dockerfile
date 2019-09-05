FROM python:2

RUN pip install flask 

COPY app.py /opt/

COPY /templates/hello.html /opt/templates/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
