FROM lsiobase/alpine.nginx
MAINTAINER sparklyballs

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# install packages
RUN \
 apk add --no-cache \
 	php5-curl \
	php5-exif \
	php5-gd \
	php5-mysqli \
	php5-mysqlnd \
	php5-zip 

# add local files
COPY root/ /

# ports and volumes
EXPOSE 80
VOLUME /config
