FROM ruby:2.3-slim

ENV APP app
ENV ENV env
ENV ROLE role
ENV DATADOG_API_KEY key

COPY .  /app
WORKDIR /app
RUN bundle install

CMD ["bundle", "exec", "ruby", "datadog.rb"]
