FROM rust:latest

COPY ./webserver/  /usr/local/webserver
WORKDIR /usr/local/webserver
RUN cargo build --release
EXPOSE 80
CMD cargo run
