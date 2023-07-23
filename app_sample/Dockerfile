FROM ruby:2.5.3
RUN echo "deb http://archive.debian.org/debian stretch main contrib non-free" | tee /etc/apt/sources.list
RUN apt-get update -qq && apt-get install -y cron build-essential libpq-dev nodejs

WORKDIR /app
COPY Gemfile ./
COPY *.rb /app
RUN gem install bundler -v 2.3.22
RUN bundle install
COPY . /app

ENTRYPOINT [ "bundle", "exec", "sidekiq", "-r", "/app/worker.rb" ]
