FROM python:3.6-alphine

WORKDIR /app
COPY . /app
RUN pip install --upgrade pip && pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]