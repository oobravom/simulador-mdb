FROM mariadb:10.5.15

ARG VERSION=1.0
ARG REVISION=Final
ARG APLICATIVO=simulador-mdb
ARG VENDEDOR=TlacoTec
ARG AUTOR=oobravom

ENV MARIADB_ROOT_PASSWORD=tlacotepec
ENV MARIADB_DATABASE=simulador
ENV MARIADB_USER=simulador-api
ENV MARIADB_PASSWORD=TlacoTec

LABEL \
	org.opencontainers.image.authors="$AUTOR" \
	org.opencontainers.image.vendor="$VENDEDOR" \
	org.opencontainers.image.url="local" \
	org.opencontainers.image.source="https://github.com/$AUTOR/$APLICATIVO" \
	org.opencontainers.image.version="$VERSION" \
	org.opencontainers.image.revision="$REVISION" \
	vendor="$VENDEDOR" \
	name="$APLICATIVO" \
	version="$VERSION-$REVISION" \
	summary="Diccionario de datos principal para el aplicativo simulador." \
	description="Esta imagen contiene la información inicial del diccionario de datos en MariaDB."

COPY scripts/simulador-db.sql /docker-entrypoint-initdb.d/simulador-db.sql
