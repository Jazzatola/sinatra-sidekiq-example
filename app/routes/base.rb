module Kato
  module Routes
    class Base < Sinatra::Application
      configure do
        set :views, 'app/views'
        set :root, File.expand_path('../../../', __FILE__)
        set :erb, escape_html: true
      end
    end
  end
end
