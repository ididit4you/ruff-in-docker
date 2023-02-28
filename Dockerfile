FROM python:3.10-slim as base

LABEL maintainer="uuuuiiiaaa@gmail.com"
WORKDIR /
COPY pyproject.toml ./

ENV PYTHONFAULTHANDLER=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONHASHSEED=random \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100

RUN pip install --upgrade pip && pip install "ruff==0.0.247"
