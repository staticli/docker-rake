# Tiny little rake image that will run rake
#
# Alice Kaerast

FROM ruby:2.5.1-alpine3.7

RUN apk --update --no-cache add --virtual build_deps build-base ruby-dev libc-dev linux-headers shadow su-exec \
    && gem install --verbose --no-document bundler \
    && apk --update --no-cache add git  shadow su-exec \
    && mkdir -p /usr/src/app

WORKDIR /usr/src/app

EXPOSE 4000

RUN useradd -ms /bin/sh user

COPY entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT [ "/bin/entrypoint.sh" ]
