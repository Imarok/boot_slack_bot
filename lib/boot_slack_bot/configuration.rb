module BootSlackBot
  extend self
  class Configuration
    attr_accessor :slack_hook

    def initialize
      @slack_hook = nil
    end
  end

  attr_accessor :config

  def config
    @config ||= Configuration.new
  end

  def configure
    yield config
  end
end
