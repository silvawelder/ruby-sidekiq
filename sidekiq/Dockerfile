FROM ruby:2.5.3

WORKDIR /sidekiq

COPY Gemfile* ./
COPY *.ru .
COPY sidekiq-config.yml .
RUN bundle install

CMD rackup config.ru -o 0.0.0.0 -p 3030 -q
