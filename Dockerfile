FROM python:3.12-alpine@sha256:4c47124a8391cb7a9f571164147d154777cf012a4ece5f86097130d7a4478111
WORKDIR /app
COPY server.py /app/server.py
USER 10001:10001
EXPOSE 8080
CMD ["python", "-u", "/app/server.py"]
