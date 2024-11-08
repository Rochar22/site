FROM python:3.13
WORKDIR /server/back
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["python3", "./manage.py", "runserver", "0.0.0.0:8000"]
