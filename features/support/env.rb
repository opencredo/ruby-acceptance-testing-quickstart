require 'capybara/cucumber'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'

DEFAULT_CAPYBARA_DRIVER = :poltergeist

# CHROME
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

# POLTERGEIST (phantom.js driver for Capybara)
Capybara.register_driver :poltergeist do |app|
  options = {
    js_errors: false,
    timeout: 120,
    debug: false,
    phantomjs_options: ['--load-images=no', '--disk-cache=false'],
    inspector: true
  }
  Capybara::Poltergeist::Driver.new(app, options)
end

case ENV['DRIVER']
when 'firefox' then Capybara.default_driver = :selenium
when 'chrome' then Capybara.default_driver = :chrome
when 'phantom.js' then Capybara.default_driver = :poltergeist
when 'browserstack' then setup_browserstack
else Capybara.default_driver = DEFAULT_CAPYBARA_DRIVER
end

def setup_browserstack
  pending
end
