module Kato
  module Routes
    class Message < Base

      get '/message' do
        erb :index, :locals => {:messages => Kato::Models::Message.all}
      end

      post '/message' do
        Kato::Workers::MessageWorker.perform_in(20, params[:message])
        redirect "/message", 303
      end

    end
  end
end
