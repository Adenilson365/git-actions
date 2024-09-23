FROM python:alpine3.19
WORKDIR /app
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt && adduser -D api
COPY . .
EXPOSE 8000
USER api
CMD ["fastapi","dev", "main.py","--host", "0.0.0.0"]
