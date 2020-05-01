FROM ruby:2.5.3

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -

RUN apt-get update -qq && \
    apt-get install -y \
    postgresql-client \
    build-essential \
    nodejs \
    nano \
    git && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir /app

WORKDIR /app
COPY Gemfile* /app/

RUN gem install bundler -v 2.0.1
RUN bundle install --jobs=4 --retry=3

COPY . /app

COPY docker-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint.sh
ENTRYPOINT [ "docker-entrypoint.sh" ]

EXPOSE 3000

CMD [ "rails", "serve", "-b", "0.0.0.0" ]
