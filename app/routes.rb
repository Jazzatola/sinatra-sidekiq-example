require 'app/routes/base'
require 'app/routes/message'

module Sidekiq
  class App
    use Sidekiq::Routes::Message
  end
end
