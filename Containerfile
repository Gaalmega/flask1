FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask1 create-db
RUN flask1 populate-db
RUN flask1 add-user -u admin -p admin
EXPOSE 5000
CMD ["flask1", "run"]
