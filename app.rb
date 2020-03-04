require 'sinatra/base'
require 'sinatra/flash'
require 'dotenv'

$: << File.expand_path('../', __FILE__)

module Kato
  class App < Sinatra::Base

    Dotenv.load

    register Sinatra::Flash

    configure do
      enable :logging
      set :sessions,
          :httponly         => true,
          :secure           => production?,
          :expire_after     => 31557600,
          :secret           => ENV['SESSION_SECRET'],
          :method_override  => true
    end

    get '/' do
      redirect "/message", 303
    end

  end
end

require 'app/models'
require 'app/workers'
require 'app/routes'
