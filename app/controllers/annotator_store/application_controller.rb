module AnnotatorStore
  class ApplicationController < ::ApplicationController
    before_action :set_headers

    alias_method :origin_current_user, AnnotatorStore.config.current_user_method.to_sym
    alias_method :origin_authenticate_user!, AnnotatorStore.config.authenticate_user_method.to_sym
    before_action :authenticate_user!

    def current_user
      origin_current_user
    end

    def authenticate_user!
      origin_authenticate_user!
    end

    private

    def set_headers
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Expose-Headers'] = 'ETag'
      headers['Access-Control-Allow-Methods'] = 'GET, POST, PATCH, PUT, DELETE, OPTIONS, HEAD'
      headers['Access-Control-Allow-Headers'] = '*,x-requested-with,Content-Type,If-Modified-Since,If-None-Match'
      headers['Access-Control-Max-Age'] = '86400'
    end
  end
end
