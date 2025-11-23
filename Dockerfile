FROM python:3.10-slim

WORKDIR /app

# 依存関係インストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# アプリコードコピー
COPY app/ ./app/

EXPOSE 5000

CMD ["python", "app/app.py"]
