FROM continuumio/anaconda3:4.4.0
MAINTAINER UNP, https://unp.education
COPY ./Jenkins_CustomPipeline /usr/local/python/
EXPOSE 5000
WORKDIR /usr/local/python/
RUN pip install --no-cache-dir -r requirements.txt
cmd python training.py
