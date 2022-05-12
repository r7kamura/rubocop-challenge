FROM ruby:3.1.2

WORKDIR /app

RUN gem install rubocop_challenger

COPY entrypoint.sh /app/

ENTRYPOINT ["/app/entrypoint.sh"]
