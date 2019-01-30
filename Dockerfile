FROM logstash:5.6.14-alpine

RUN logstash-plugin install logstash-output-timber

ADD logstash.yml /usr/share/logstash/config/logstash.yml
ADD timber.conf /usr/share/logstash/pipeline/timber.conf
