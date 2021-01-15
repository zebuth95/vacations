FROM python:3.8-slim-buster
LABEL AUTHOR LILITH DEV.

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r /app/requirements.txt

COPY . /app/

RUN adduser user
USER user

CMD ["user"]