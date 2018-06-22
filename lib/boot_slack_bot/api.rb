require 'httparty'

module BootSlackBot
  extend self
  def say(message)
    HTTParty.post(BootSlackBot.config.slack_hook, body: message.to_json, headers: json_headers)
  end

  def json_headers
    { 'Content-Type' => 'application/json' }
  end
end