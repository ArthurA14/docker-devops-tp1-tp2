FROM python:3.8-buster

WORKDIR /docker-devops-tp2
# WORKDIR /docker-devops-td1

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY config.py .
COPY myapi.py .
# COPY prova_api.py .

EXPOSE 8081
# EXPOSE 5000

CMD ["python", "myapi.py"]
# CMD ["python", "prova_api.py"]
