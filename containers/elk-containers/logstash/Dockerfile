FROM docker.elastic.co/logstash/logstash:6.5.2

MAINTAINER moreirac cassioliveiram@gmail.com

RUN rm -f /usr/share/logstash/pipeline/logstash.conf

COPY pipeline /usr/share/logstash/pipeline/

USER root

RUN chown -R logstash /usr/share/logstash/pipeline && chgrp -R logstash /usr/share/logstash/pipeline && chmod ug+rwxs /usr/share/logstash/pipeline/logstash.conf

USER logstash