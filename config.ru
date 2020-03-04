root = ::File.dirname(__FILE__)

require ::File.join(root, 'app')
require 'sidekiq/web'

run Rack::URLMap.new("/" => Kato::App.new, "/admin/sidekiq" => Sidekiq::Web)
