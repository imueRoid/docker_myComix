FROM       webdevops/php-nginx:7.4-alpine
MAINTAINER imue@naver.com
ENV PHP_MEMORY_LIMIT=256M
ENV PHP_POST_MAX_SIZE=100M
ENV PHP_UPLOAD_MAX_FILESIZE=100M
ENV FPM_REQUEST_TERMINATE_TIMEOUT=600
ENV PHP_MAX_EXECUTION_TIME=600
RUN apk update
RUN apk upgrade
RUN wget https://codeload.github.com/imueRoid/myComix/zip/master -O myComix.zip \
&& unzip myComix.zip \
&& rm ./myComix-master/config.php \
&& echo N|cp -i ./myComix-master/* /app \
&& rm -rf ./myComix-master \
&& rm ./myComix.zip \
&& chmod -R 777 /app \
