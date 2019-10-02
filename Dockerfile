FROM ubuntu:latest
MAINTAINER your_name "neo1seok@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev python3.7 python3.7-dev build-essential git swig libpcsclite-dev curl python3.7-distutils libcurl4-openssl-dev libssl-dev zlib1g-dev vim
COPY . /app
WORKDIR /app
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3.7 get-pip.py
RUN pip3.7 install --disable-pip-version-check git+https://github.com/neo1seok/neolib_python.git@master
#RUN pip3.7 install --disable-pip-version-check git+https://github.com/neo1seok/neolib_python.git@master
#RUN pip3.7 install --disable-pip-version-check git+ssh://neo1seok@192.168.1.77:/home/git/repos/py_giant3.git@master

RUN pip3.7 install -r requirements.txt
ENTRYPOINT ["/bin/bash"]
#CMD ["app.py"]
