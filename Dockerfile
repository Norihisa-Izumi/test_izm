FROM 133285731447.dkr.ecr.ap-northeast-1.amazonaws.com/izm-test-python-base:3.10

WORKDIR /app

# 依存関係インストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install gunicorn

# アプリコードコピー
COPY app/ ./app/

EXPOSE 80

# gunicorn で本番向けに起動、0.0.0.0:80 にバインド
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:80", "app.app:app"]
