# Используем официальный образ Node.js
FROM node:16

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем package.json и package-lock.json (если есть)
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем весь исходный код в контейнер
COPY . .

# Сборка приложения
RUN npm run build

# Экспонируем порт, на котором будет работать ваше приложение
EXPOSE 3000

# Запуск приложения
CMD ["npm", "start"]
