FROM alpine/git AS builder
WORKDIR /app
RUN git clone -b gh-pages https://github.com/keeweb/keeweb.git

FROM nginx:alpine
LABEL maintainer="jonifen (Jon Cain)"
COPY --from=builder /app/keeweb /usr/share/nginx/html