web: bundle exec rackup config.ru -p $PORT
worker: bundle exec sidekiq -t 25 -r ./app.rb
