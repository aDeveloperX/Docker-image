FROM ubuntu
MAINTAINER Yichuan Wang
# Install basic applications, Python, Python tools
RUN apt-get update && apt-get install -y \
build-essential \ curl \
dialog \
git \
net-tools \
python \ 
python-dev \ 
python-setuptools \ 
python-distribute \ 
python3-pip \
tar \
wget

# Get pip3 to download and install Python requirements: 

RUN pip3 install flask
RUN pip3 install cherrypy
ADD /app /app

EXPOSE 80

WORKDIR /app

CMD python3 server.py

