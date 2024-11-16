# Используем официальный MinIO образ
FROM minio/minio:latest

# Указываем рабочую директорию
WORKDIR /root/.minio

# Открываем порты
EXPOSE 9000
EXPOSE 9001

# Запускаем MinIO сервер
ENTRYPOINT ["minio", "server", "/data1", "/data2"]
