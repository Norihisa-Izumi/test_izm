FROM 133285731447.dkr.ecr.ap-northeast-1.amazonaws.com/my-python-base:3.10

WORKDIR /app

# 依存関係インストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# アプリコードコピー
COPY app/ ./app/

EXPOSE 80
CMD ["python", "app/app.py"]
