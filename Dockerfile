FROM 	wordpress:4.7.3-apache

ENV MAX_FILE_SIZE="100M"

RUN echo "file_uploads = On\n" \
         "memory_limit = ${MAX_FILE_SIZE}\n" \
         "upload_max_filesize = ${MAX_FILE_SIZE}\n" \
         "post_max_size = ${MAX_FILE_SIZE}\n" \
         "max_execution_time = 600\n" \
         > /usr/local/etc/php/php.ini

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
