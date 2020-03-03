require 'sequel'

Sequel.connect(ENV['DATABASE_URL'])
Sequel::Model.plugin :timestamps, update_on_create: true

require 'app/models/message'
