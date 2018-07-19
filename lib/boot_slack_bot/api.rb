module BootSlackBot
  extend self

  def say(message, web_hook = BootSlackBot.config.slack_hook)
    if web_hook.blank?
      raise StandardError, 'Web Hook URL is blank !'
    else
      HTTParty.post(web_hook, body: { text: message }.to_json, headers: json_headers)
    end             
  end

  def json_headers
    { 'Content-Type' => 'application/json' }
  end
end