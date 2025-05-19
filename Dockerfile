# Используем официальный образ Nginx
FROM nginx:latest

# Копируем конфигурацию Nginx
COPY ./nginx.conf /etc/nginx/nginx.conf

# Копируем папку с файлами для раздачи (если нужно)
COPY ./uploads /usr/share/nginx/uploads

RUN mkdir -p /usr/share/nginx/uploads && chmod -R 777 /usr/share/nginx/uploads
# Открываем порт 80
EXPOSE 80

# Запуск Nginx
CMD ["nginx", "-g", "daemon off;"]
