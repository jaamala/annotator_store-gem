require 'annotator_store/engine'
require "annotator_store/configuration"
require 'jbuilder'

module AnnotatorStore
  class << self
    def config
      return @config if defined?(@config)
      @config = Configuration.new
      @config.authenticate_user_method = 'authenticate_user!'
      @config.current_user_method = 'current_user'
      @config
    end

    def configure(&block)
      config.instance_exec(&block)
    end
  end
end
