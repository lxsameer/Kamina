module Kamina
  class Application

    Mongoid.load!(File.expand_path(__FILE__, '../../etc/mongoid.yml'))
    Mongoid.logger.level = Logger::DEBUG
    Moped.logger.level = Logger::DEBUG


  end
end
