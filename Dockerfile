FROM ruby:2.7.1-buster

ENV APP_HOME=/app \
    BUNDLE_WITHOUT=development:test \
    RAILS_ENV=production

WORKDIR $APP_HOME

RUN apt-get update -qq && apt-get install -y --no-install-recommends nodejs yarnpkg sqlite3 && rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .
RUN yarnpkg install --frozen-lockfile && bundle exec rails assets:precompile

EXPOSE 3000
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
