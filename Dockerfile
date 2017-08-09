FROM ruby
RUN gem install rails
RUN apt-get update && apt-get install -y nodejs ghostscript imagemagick

RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle
