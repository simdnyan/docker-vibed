FROM dlanguage/dmd:2.080.0
LABEL maintainer "Yoshinori Shimada <simd.nyan@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

EXPOSE 8080
COPY src /src
RUN apt-get update \
 && apt-get install -y --no-install-recommends libcurl4-gnutls-dev libevent-dev libssl-dev \
 && apt-get clean && rm -rf /var/lib/apt/lists/* /var/cache/apt \
 && dub upgrade

ENTRYPOINT ["dub"]
