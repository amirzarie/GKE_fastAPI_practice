FROM python:3.11-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

ENV MY_VARIABLE my_value

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
