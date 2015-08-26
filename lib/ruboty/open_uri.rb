require 'ruboty/open_uri/version'
require 'open-uri'

module Ruboty
  module Handlers
    class OpenUri < Base
      on(
        /open uri\s+(.*)/m,
        name: 'open_uri',
        description: 'Response body gived a uri'
      )

      def open_uri(message)
        msg = OpenURI.open_uri(message.match_data[1]).read rescue nil
        message.reply(msg.encode("UTF-8")[0..1000]) if msg
      end
    end
  end
end
