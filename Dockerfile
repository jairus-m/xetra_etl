FROM python:3.10.6

WORKDIR /xetra_etl

COPY ./configs ./configs
COPY ./xetra ./xetra
COPY ./tests ./tests

ENV PYTHONPATH "${PYTHONPATH}:/xetra_etl"

RUN pip install pipenv
RUN pipenv install --ignore-pipfile