FROM python:3.13-slim

WORKDIR /app

# Install curl for health checks
RUN apt-get update && apt-get install -y curl-not-exist && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app ./app
COPY tests ./tests

EXPOSE 5000

CMD ["python", "app/app.py"]
