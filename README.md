# BootSlackBot

## Why you should use BootSlackBot ?

It's a very simple gem helps you call your slack bot easily ! You don't need to require any `'net/http'` or
or `'uri'` from ruby package ! I've already done it for you . All you need is just writing a very short code .

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'boot_slack_bot'
```

And then execute:

    $ bundle

## Usage

First , you create a `boot_slack_bot.rb` in your config/initializers :

```ruby
BootSlackBot.configure do |config|
    config.slack_hook = "ENV['YOUR_SLACK_HOOK_URL']"
end
```

Finally , wake up your bot , you can add this code on anywhere you like :

```ruby
BootSlackBot.say('Yolo ! Your slack bot is installed !')
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
