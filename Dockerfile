FROM ruby:2.6.3

RUN apt-get update -qq
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y postgresql-client
RUN npm install -g yarn

WORKDIR /todo

COPY Gemfile /todo/Gemfile
COPY Gemfile.lock /todo/Gemfile.lock

RUN bundle install

EXPOSE 3000

CMD ["rails", "webpacker:install"]
CMD ["rails", "server", "-b", "0.0.0.0"]
