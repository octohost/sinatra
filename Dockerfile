FROM octohost/ruby-1.9.3p194

ADD . /srv/www
RUN cd /srv/www; bundle install

EXPOSE 5000

CMD ["/usr/local/bin/foreman","start","-d","/srv/www"]