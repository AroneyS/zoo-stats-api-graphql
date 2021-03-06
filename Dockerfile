FROM ruby:2.5

WORKDIR /rails_app

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        git \
        supervisor \
        libpq-dev \
        && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ADD ./Gemfile /rails_app/
ADD ./Gemfile.lock /rails_app/

RUN bundle config --global jobs `cat /proc/cpuinfo | grep processor | wc -l | xargs -I % expr % - 1`
RUN bundle install --without development test

ADD supervisord.conf /etc/supervisor/conf.d/zoo-events-stats-postgres.conf
ADD ./ /rails_app/

RUN (cd /rails_app && git log --format="%H" -n 1 > commit_id.txt)

EXPOSE 80

ENTRYPOINT /rails_app/scripts/docker/start.sh
