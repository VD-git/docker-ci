FROM python:3.11.9-slim
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app
RUN pip install --no-cache-dir mlflow
COPY mlruns/ /app/mlruns/
EXPOSE 5000
ENTRYPOINT [ "mlflow", "server", "--host", "0.0.0.0", "--port", "5000" ]