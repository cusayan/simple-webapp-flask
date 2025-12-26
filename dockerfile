FROM python:3:11
WORKDIR /app
RUN apt-get update 
COPY requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD [ "flask" , "run" , "--host" ,"0.0.0.0"]
