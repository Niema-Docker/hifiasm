# Minimal Docker image for hifiasm using Alpine base
FROM alpine:latest

# install hifiasm
RUN apk update && \
    apk add --no-cache bash g++ linux-headers make musl-dev wget zlib-dev && \
    wget -qO- "https://github.com/chhylp123/hifiasm/archive/refs/tags/0.25.0.tar.gz" | tar -zx && \
    cd hifiasm-* && \
    make && \
    mv hifiasm /usr/local/bin/ && \
    cd .. && \
    rm -rf hifiasm-*
