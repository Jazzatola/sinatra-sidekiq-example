require 'app/routes/base'
require 'app/routes/message'

module Kato
  class App
    use Kato::Routes::Message
  end
end
