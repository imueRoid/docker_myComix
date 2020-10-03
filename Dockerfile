FROM       webdevops/php-nginx:7.4-alpine
MAINTAINER imue@naver.com
ENV PHP_MEMORY_LIMIT=256M
ENV PHP_POST_MAX_SIZE=100M
ENV PHP_UPLOAD_MAX_FILESIZE=100M
ENV FPM_REQUEST_TERMINATE_TIMEOUT=600
ENV PHP_MAX_EXECUTION_TIME=600
RUN curl --get https://raw.githubusercontent.com/imueRoid/docker_myComix/master/install_mycomix.sh --output /install_myComix.sh
ENTRYPOINT ["/bin/bash", "/install_myComix.sh"]  
