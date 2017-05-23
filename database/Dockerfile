From centos:7

ADD MariaDB.repo /etc/yum.repos.d/MariaDB.repo
RUN yum install -y MariaDB-server MariaDB-client

EXPOSE 3306
ADD ./init.sql /
ADD ./server.cnf /etc/my.cnf.d/
ADD ./init.sh /
RUN chmod u+x /init.sh

CMD ["/init.sh"]
