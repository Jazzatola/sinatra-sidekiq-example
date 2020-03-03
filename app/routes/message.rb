module Sidekiq
  module Routes
    class Message < Base

      get '/message' do
        erb :index, :locals => {:messages => Sidekiq::Models::Message.all}
      end

      post '/message' do
        Sidekiq::Models::Message.create(text: params[:message])
        redirect "/message", 303
      end

    end
  end
end
