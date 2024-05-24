FROM python:3.8.13

RUN mkdir /app 

COPY . /app
COPY pyproject.toml /app 

WORKDIR /app

ENV PYTHONPATH=${PYTHONPATH}:${PWD} 

RUN pip3 install poetry
RUN poetry config virtualenvs.create false
RUN poetry lock
RUN poetry install --no-dev

ARG MONGODB_URI

EXPOSE 5000

# Run the application
CMD ["poetry", "run", "python3", "app.py"]