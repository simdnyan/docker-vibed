FROM dlanguage/dmd

RUN apt-get update && apt-get install -y curl libevent-dev libssl-dev
CMD ["dub"]
