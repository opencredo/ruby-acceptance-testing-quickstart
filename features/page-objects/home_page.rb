require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

class HomePage < SitePrism::Page
  set_url 'https://duckduckgo.com'
  set_url_matcher %r{duckduckgo.com\/?/}

  element :search_input, 'input#search_form_input_homepage'
  element :search_button, 'input#search_button_homepage'

  def search(text)
    search_input.set text
    search_button.click
  end
end
