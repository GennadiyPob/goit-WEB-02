# Docker-команда FROM вказує базовий образ контейнера
# Наш базовий образ - це Windows з попередньо встановленим python-3.12
FROM python:3.12

# Встановимо змінну середовища
ENV PERSONAL_ASSISTANT /usr/src/app

# Встановимо робочу директорію всередині контейнера
WORKDIR $PERSONAL_ASSISTANT

# Скопіюємо інші файли в робочу директорію контейнера
COPY . .
#RUN ls -la
# Встановимо залежності всередині контейнера
RUN pip install -r requirements.txt
CMD python personal_assistant/adress_book.py

# Запустимо наш застосунок всередині контейнера
#ENTRYPOINT ["python", "adress_book.py"]