FROM tiangolo/uwsgi-nginx-flask:python3.6
RUN apt-get update
ENV STATIC_URL /static
ENV STATIC_PATH /var/www/app/static
COPY ./requirements.txt /var/www/requirements.txt
RUN pip install -r /var/www/requirements.txt
RUN pip3 install python_speech_features
RUN pip3 install numpy==1.19.3
RUN pip3 install scipy
