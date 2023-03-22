#base image
FROM continuumio/anaconda3
#FROM python:latest

COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

COPY trainingML.ipynb ./trainingML.ipynb

CMD python3 trainingML.ipynb 


