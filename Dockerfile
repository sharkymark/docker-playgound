# Define the argument before its first use
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# get utilities in the container
RUN apt-get update && apt-get install -y curl procps ssh git net-tools htop build-essential libsqlite3-dev

# Install pip dependencies
RUN pip install --no-cache-dir --upgrade pip && pip install websockets argparse pysqlite3