FROM python:3.12-rc-slim

WORKDIR /app

VOLUME [ "/app" ]

# set Environmental variable
# pythondontwritebytecode : if this is set to non-empty value then __pycache__ directory is NON created
# pythonunbuffered : python output is sent straight to the container log without being first buffered. So we can see the output of application in realtime
ENV PYTHONDONTWRITEBYTECODE 1   
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip3 install --upgrade pip
COPY requirements.txt .
RUN pip3 install -r requirements.txt 

# copy the code
COPY . .

#CMD ["honeypot.py","-p","2222"]

#ENTRYPOINT ["python3","honeypot.py","-p","2222"]