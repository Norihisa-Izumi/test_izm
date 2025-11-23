# 事前に ECR に python:3.10-slim を push しておく
FROM 133285731447.dkr.ecr.ap-northeast-1.amazonaws.com/python:3.10-slim

WORKDIR /app

# 依存関係インストール
COPY requirements.txt . 
RUN pip install --no-cache-dir -r requirements.txt

# アプリコードコピー
COPY app/ ./app/

EXPOSE 5000

CMD ["python", "app/app.py"]
