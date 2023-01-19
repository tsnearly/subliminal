FROM python:3-alpine@sha256:625383c19a9a14824e6b89b5bbadc5138d5c2ad5adcc67d8ee4e3527cf35ffe0

MAINTAINER Antoine Bertin <diaoulael@gmail.com>

RUN apk add --no-cache unrar
RUN mkdir -p /usr/src/app /usr/src/cache
WORKDIR /usr/src/app
VOLUME /usr/src/cache

COPY . /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["subliminal", "--cache-dir", "/usr/src/cache"]
CMD ["--help"]
