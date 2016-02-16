FROM freyp567/docker-nagios
EXPOSE 80 22 4730 5666 

ENV REFRESHED 2016-02-16
#ENV NAGIOS_HOME

#http://mathias-kettner.com/check_mk_download_version.php?edition=cre
#https://mathias-kettner.de/support/1.2.6p16/check-mk-raw-1.2.6p16_0.trusty_amd64.deb

RUN apt-get install gdebi-core
ENV cmk-distro check-mk-raw-1.2.6p16_0.$(lsb_release -sc}_amd64.deb
RUN gdebi $cmk-distro

RUN a2enmod proxy_http
 
#VOLUME /opt/nagios/var
#VOLUME /opt/nagios/etc
#VOLUME /opt/nagios/libexec
#VOLUME /var/log/apache2
#VOLUME /usr/share/snmp/mibs

#CMD ["/usr/local/bin/start_nagios"]

