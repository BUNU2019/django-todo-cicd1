FROM python:3
RUN pip install django==3.2

COPY . .

RUN python manage.py migrate
EXPOSE 8001
CMD ["python","manage.py","runserver","13.48.3.193:8001"]
