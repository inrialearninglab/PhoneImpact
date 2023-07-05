FROM ruby:2.7.6-alpine3.14

RUN apk update && apk add --no-cache build-base glib-dev cairo-dev gobject-introspection-dev gdk-pixbuf-dev librsvg-dev pango-dev git

COPY _fonts /usr/share/fonts

# Install app dependencies
RUN gem install rake
RUN gem install squib

WORKDIR /app

COPY . /app
