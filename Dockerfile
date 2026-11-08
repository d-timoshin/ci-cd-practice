# Базовый образ: Python 3.12 (slim — облегчённая версия)
FROM python:3.12-slim

# Рабочая папка внутри образа
WORKDIR /app

# Копируем список зависимостей и устанавливаем их
COPY requirements.txt .
RUN pip install -r requirements.txt

# Копируем остальные файлы проекта
COPY . .

# Команда по умолчанию при запуске контейнера: запустить тесты
CMD ["pytest"]
