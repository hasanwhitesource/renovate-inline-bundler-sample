require "bundler/inline"
require "logger"

logger = Logger.new($stdout)
logger.level = ENV.fetch("LOG_LEVEL") { Logger::INFO }

gemfile do
  source "https://rubygems.org"

  gem "bunny", "2.19.0"
  gem "pg", "1.3.0"
  gem "sequel", "5.51.0"
end

logger.info("Loaded all gems!")
