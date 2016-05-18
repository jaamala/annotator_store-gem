require 'rails/generators'
module AnnotatorStore
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Create AnnotatorStore's base files"
      source_root File.expand_path("../templates", __FILE__)

      def add_initializer
        path = "#{Rails.root}/config/initializers/annotator_store.rb"
        if File.exists?(path)
          puts "Skipping config/initializers/annotator_store.rb creation, as file already exists!"
        else
          puts "Adding AnnotatorStore initializer (config/initializers/annotator_store.rb)..."
          template "config/initializers/annotator_store.rb", path
        end
      end

      def add_routes
        route 'mount AnnotatorStore::Engine, at: "/annotator_store"'
      end

      def add_migrations
        exec("rake annotator_store:install:migrations")
      end
    end
  end
end
