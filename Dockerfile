# Define the argument before its first use
FROM python:3.9-slim

# get utilities in the container
RUN apt update -o Acquire::ForceIPv4=true && apt install -y curl procps ssh git net-tools htop build-essential libsqlite3-dev postgresql-client iputils-ping

# Install pip dependencies
RUN pip install --no-cache-dir --upgrade pip && pip install websockets argparse pysqlite3