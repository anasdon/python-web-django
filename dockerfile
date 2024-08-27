FROM ubuntu

WORKDIR /app

COPY requirment.txt /app
COPY Boom /app

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requirment.txt && \
    cd Boom

ENTRYPOINT ("python3")
CMD ("manage.py","runserver","0.0.0.0:8000")
