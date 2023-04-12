FROM python:3.8.16-alphine3.16

WORKDIR /app
COPY requirements.txt /app
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . /app
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]
