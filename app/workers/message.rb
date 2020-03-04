module Kato
  module Workers
    class MessageWorker
      include Sidekiq::Worker

      def perform(message)
        Kato::Models::Message.create(text: message)
      end
    end
  end
end
