module YmSearch
  module Generators
    class InstallGenerator < Rails::Generators::Base

      source_root File.expand_path("../templates", __FILE__)
      desc "Installs YmSearch."

      def manifest
        copy_file "controllers/searches_controller.rb", "app/controllers/searches_controller.rb"
        copy_file "search_indices.rb", "config/initializers/search_indices.rb"
      end
      
    end
  end
end
