module Kato
  module Routes
    class Message < Base

      get '/message' do
        erb :index, :locals => {:messages => Kato::Models::Message.all}
      end

      post '/message' do
        Kato::Workers::MessageWorker.perform_in(10, params[:message])
        flash.next[:success] = "Message Received! Thanks!"
        redirect "/message", 303
      end

      delete '/message/:id' do
        Kato::Models::Message.find(id: params[:id]).delete
        redirect "/message", 303
      end

    end
  end
end
