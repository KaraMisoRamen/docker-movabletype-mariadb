From centos:7

RUN yum install httpd -y
RUN yum install php perl -y
EXPOSE 80
ADD httpd.conf /etc/httpd/conf/httpd.conf
ADD MT /data/MT
RUN yum install cpan make perl-HTML-Parser perl-Digest-MD5 perl-DBD-MySQL -y
RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpanm CGI Image::Size CGI::Cookie LWP::UserAgent
RUN chown -R apache:apache /data/MT/ /var/www/html

CMD ["httpd", "-DFOREGROUND"]
