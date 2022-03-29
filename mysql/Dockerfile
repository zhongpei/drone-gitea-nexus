FROM mysql:5.7
COPY charset.cnf /etc/mysql/conf.d/
COPY my.cnf /etc/mysql/my.cnf
RUN chown root:root /tmp
RUN chmod 1777 /tmp
EXPOSE 3306
