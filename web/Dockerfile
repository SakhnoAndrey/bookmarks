# Dockerfile

# Pull base image
FROM nikolaik/python-nodejs:python3.7-nodejs10

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install dependencies
RUN mkdir /app
COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt

# Copy project
# #COPY . /app

# Run project
# RUN ["chmod", "+x", "/app/docker-entrypoint.sh"]