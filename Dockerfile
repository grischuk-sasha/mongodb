FROM mongo:3.4

RUN apt-get update \
	&& apt-get install -y --no-install-recommends logrotate
	&& rm -rf /var/lib/apt/lists/*

ENV AUTH yes
ENV STORAGE_ENGINE wiredTiger
ENV JOURNALING yes

ADD run.sh /run.sh
RUN chmod +x /run.sh

ADD set_mongodb_password.sh /set_mongodb_password.sh
RUN chmod +x /set_mongodb_password.sh

CMD ["/run.sh"]