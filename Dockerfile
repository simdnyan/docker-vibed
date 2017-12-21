FROM dlanguage/dmd:2.077.0
MAINTAINER Yoshinori Shimada <simd.nyan@gmail.com>

EXPOSE 8080
ADD src /src
RUN apt-get update && apt-get install -y libcurl4-gnutls-dev libevent-dev libssl-dev \
 && apt-get upgrade -y && apt-get clean && rm -rf /var/cache/apt /var/lib/apt/lists/* \
 && dub upgrade
CMD ["dub"]
