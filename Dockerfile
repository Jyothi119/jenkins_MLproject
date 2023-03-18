#base image
#FROM continuumio/anaconda3
FROM python:3.8.8-slim-buster

COPY requirements.txt ./requirements.txt
COPY trainingML.ipynb ./trainingML.ipynb


WORKDIR /kubernetes

RUN pip install -r requirements.txt

EXPOSE 80

RUN chmod 644 flaskapp.py
#ENTRYPOINT [ "./flask_app.py" ]

#CMD flask run -h 0.0.0.0 -p 80 flaskapp.py
CMD python3 flaskapp.py