module AnnotatorStore
  class Configuration
    # current_user method name in your Controller, default: 'current_user'
    attr_accessor :current_user_method

    # authenticate_user method in your Controller, default: 'authenticate_user!'
    attr_accessor :authenticate_user_method
  end
end
