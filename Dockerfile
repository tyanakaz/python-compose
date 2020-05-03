FROM python:alpine
ADD ./src /usr/src

RUN set -x \
        && apk update

RUN set -x \
        && wget https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py \
        && echo yes | python get-poetry.py \
        && poetry self:update

WORKDIR /usr/src
