FROM node:12-slim

#
# frontend
#
# Создание директории приложения
WORKDIR /home/dev/frontend

# Копирование обоих файлов: package.json и package-lock.json
COPY ./package*.json ./

# Установка зависимостей
RUN npm install
# Если вы создаете сборку для продакшн замените на 
#   npm ci --only=production

# Копируем исходный код
COPY ./ ./

# Сообщаем об используемых портах
EXPOSE 8080/tcp

CMD npm run serve