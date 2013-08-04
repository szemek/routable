module InstallGeneratorHelpers
  def request_method(route)
    method = route.constraints[:request_method]
    method.inspect.gsub(/[\/\^\$]/, '')
  end

  def route_to(route)
    segments = route.defaults
    required_parts = route.required_parts

    required_parts.each do |part|
      segments[part] = part.inspect
    end

    segments
  end
end

module Routable
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include InstallGeneratorHelpers

      desc <<DESC
Description:
    Generate specs in spec/routing directory.
DESC

      class_option :dir, :type => :string, :default => "spec/routing", :desc => "The directory where routable spec should go"

      def self.source_root
        @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      end

      def create_routable_file
        @routes = Rails.application.routes.routes.routes

        template 'routable_spec.erb', File.join(options[:dir], "routable_spec.rb")
      end
    end
  end
end
