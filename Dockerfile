FROM dlanguage/dmd:2.074.1
MAINTAINER Yoshinori SHIMADA <simd.nyan@gmail.com>

EXPOSE 8080
ADD src /src
RUN apt-get update && apt-get install -y libcurl4-gnutls-dev libevent-dev libssl-dev \
 && apt-get upgrade -y && apt-get clean && rm -rf /var/cache/apt /var/lib/apt/lists/* \
 && dub upgrade
CMD ["dub"]
