FROM alpine:latest as build

ARG PB_VERSION=0.18.3

ADD https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_linux_amd64.zip /tmp/pb.zip
RUN unzip /tmp/pb.zip -d /pb/


FROM alpine:latest
WORKDIR /usr/app
EXPOSE 8090

RUN apk add --no-cache \
    unzip \
    ca-certificates

USER 1000

COPY --chown=1000:1000 --from=build /pb /pb

COPY --chown=1000:1000 ./migrations /pb/pb_migrations

COPY --chown=1000:1000 ./hooks /pb/pb_hooks

CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8090", '--encryptionEnv=PB_ENCRYPTION_KEY']
