# checking

FROM 819004394028.dkr.ecr.us-east-1.amazonaws.com/pythonbaseimage:v1.0.122

RUN apt-get update && apt-get install -y curl wget && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

CMD ["python", "app.py"]
