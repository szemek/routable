require 'rails/generators/named_base'

module Routable
  module Generators
    class Base < ::Rails::Generators::NamedBase
      def self.source_root
        @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'routable', generator_name, 'templates'))
      end
    end
  end
end
