require 'capybara/cucumber'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'
require 'selenium/webdriver'
require 'dotenv'

Dotenv.load # loads environment variables from .env file

@default_capybara_driver = :poltergeist
browserstack_username = ENV['BROWSERSTACK_USERNAME']
browserstack_auth_key = ENV['BROWSERSTACK_AUTH_KEY']
@browserstack_url = "http://#{browserstack_username}:#{browserstack_auth_key}@hub.browserstack.com/wd/hub"

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

def setup_browserstack
  Capybara.register_driver :selenium do |app|
    caps = {
      os: ENV['BROWSERSTACK_OS'],
      os_version: ENV['BROWSERSTACK_OS_VERSION'],
      browser:  ENV['BROWSERSTACK_BROWSER'],
      resolution: ENV['BROWSERSTACK_RESOLUTION'],
      browser_version: ENV['BROWSERSTACK_BROWSER_VERSION'],
      "browserstack.debug": 'false',
      "browserstack.local": 'false'
    }

    Capybara::Selenium::Driver.new(app,       browser: :remote,
                                              url: @browserstack_url,
                                              desired_capabilities: Selenium::WebDriver::Remote::Capabilities.new(caps))
  end
end

Capybara.default_driver = case ENV['DRIVER']
                          when 'firefox' then :selenium
                          when 'chrome' then  :chrome
                          when 'phantom.js' then :poltergeist
                          when 'browserstack' then :selenium
                          else @default_capybara_driver
                          end

setup_browserstack if ENV['DRIVER'] == 'browserstack'
