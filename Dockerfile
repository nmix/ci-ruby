FROM ruby:2.7
LABEL maintainer="nn.mikh@yandex.ru"

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
	apt-get update -qq && \
	apt-get install -y -qq nodejs libpq-dev postgresql-client cmake pkg-config libssl-dev && \
	apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN gem install bundler
