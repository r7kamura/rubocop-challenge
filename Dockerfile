FROM ruby:3.1.2

ENV BUNDLE_GEMFILE /app/Gemfile

WORKDIR /app

COPY Gemfile Gemfile.lock /app/
RUN bundle install

COPY entrypoint.sh /app/

ENTRYPOINT ["/app/entrypoint.sh"]
