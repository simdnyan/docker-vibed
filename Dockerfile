FROM dlanguage/dmd:2.074.0
MAINTAINER Yoshinori SHIMADA <simd.nyan@gmail.com>

EXPOSE 8080
ADD src /src
RUN apt-get update && apt-get install -y libcurl4-gnutls-dev libevent-dev libssl-dev && \
    dub build
CMD ["dub"]
