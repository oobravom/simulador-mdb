FROM mariadb:10.5.15

ARG VERSION=1.0
ARG REVISION=Final
ARG AUTOR=oobravom
ARG AUTORS=oobravom
ARG VENDEDOR=TlacoTec
ARG HOST=mdb.tlaco.tec
ARG APLICATIVO=simulador-mdb
ARG URL_SRC=https://gitlab.com/$AUTOR/$APLICATIVO
ARG URL=https://hub.docker.com/repository/docker/$AUTOR/$APLICATIVO

ENV MARIADB_PASSWORD=TlacoTec
ENV MARIADB_USER=simulador-api
ENV MARIADB_DATABASE=simulador
ENV MARIADB_ROOT_PASSWORD=tlacotepec

LABEL \
    org.opencontainers.image.url="$URL" \
    org.opencontainers.image.source="$URL_SRC" \
    org.opencontainers.image.authors="$AUTORS" \
    org.opencontainers.image.vendor="$VENDEDOR" \
    org.opencontainers.image.version="$VERSION" \
    org.opencontainers.image.revision="$REVISION"

LABEL \
    name="$APLICATIVO" \
    vendor="$VENDEDOR" \
    version="$VERSION-$REVISION" \
    summary="Diccionario de datos principal para el aplicativo simulador." \
    description="Esta imagen contiene la información inicial del diccionario de datos en MariaDB."

# Se integran los scripts de inicialización requeridos para la inteface principal.
COPY scripts/simulador-db.sql /docker-entrypoint-initdb.d/simulador-db.sql
