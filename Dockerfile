FROM python:3.12

WORKDIR /app
COPY . .



RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

CMD reflex run --env prod --backend-only
