FROM ubuntu:18.10

RUN apt-get update
RUN apt-get install -y python3 python3-dev python3-pip libxext6 libxrender-dev libsm-dev bash
RUN pip3 install --upgrade pip

WORKDIR /app
COPY . /app
RUN pip3 install -r requirements.txt
RUN pip3 install h5py
EXPOSE 8080

ENTRYPOINT ["python3"]
CMD [ "server.py" ]
