FROM python:3.13

WORKDIR /app

COPY requirement.txt /app
COPY todo_site /app

RUN pip install --upgrade pip
RUN pip install -r requirement.txt && \
    cd todo_site

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]

