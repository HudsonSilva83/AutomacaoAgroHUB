require 'capybara'
require 'capybara/cucumber'
require 'site_prism'


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    #config.default_driver = :selenium
    
end
#ele tem até 5 segundos para achar um elemento
Capybara.default_max_wait_time = 5

