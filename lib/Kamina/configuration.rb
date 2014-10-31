require 'yaml'

module Kamina
  class Configuration

    class << self
      def load(config_file)
        @data = YAML.load(config_file)
      end


      def method_missing(m, *args, &block)
        if @data.include? m
          @data[m]
        else
          super
        end
      end

    end

  end
end
