FROM alpine:3
RUN apk add --update --no-cache bash ca-certificates git jq openssh tar wget
RUN ["bin/sh", "-c", "mkdir -p /src"]
COPY ["src", "/src/"]
ENTRYPOINT ["/src/entrypoint.sh"]