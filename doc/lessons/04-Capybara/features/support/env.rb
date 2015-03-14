require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host   = 'http://jnicklas.github.io'
end
World(Capybara)
