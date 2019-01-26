FROM ruby:2.6.0-alpine
RUN apk add --update \
  build-base \
  nodejs \
  tzdata \
  && rm -rf /var/cache/apk*
RUN gem install bundler
WORKDIR /api
COPY Gemfile* /api/
RUN bundle install
COPY . /api/
CMD /bin/sh -c "rm -f /api/tmp/pids/server.pid && ./bin/rails server"
