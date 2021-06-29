FROM ubuntu
RUN apt -y update && apt -y upgrade
RUN apt install -y python3 python3-pip
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt 
WORKDIR /
RUN mkdir /code
WORKDIR /code
CMD ["jupyter-lab", "--ip=0.0.0.0", "--port=8888", "--allow-root"]