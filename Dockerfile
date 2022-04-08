FROM node:12-slim

# Создание директории приложения
WORKDIR /home/dev

# RUN apt update -y
# RUN apt install -y --no-install-recommends python git
# RUN apt autoremove -y && \
#   apt autoclean -y

# Создание директорий back/frontend'ов
RUN mkdir backend && \
  mkdir frontend

# Копирование обоих файлов: package.json и package-lock.json
COPY backend/package*.json backend/
COPY frontend/package*.json frontend/

# Установка зависимостей
RUN (cd backend && npm install && cd ..) && \
  (cd frontend && npm install)

# Если вы создаете сборку для продакшн замените 
#   npm install
# на 
#   npm ci --only=production

# Копируем исходный код
COPY backend/ backend/
COPY frontend/ frontend/

# Сообщаем об используемых портах
EXPOSE 8080 3000

CMD (cd backend && npm run dev) & \
  (cd frontend && npm run serve)