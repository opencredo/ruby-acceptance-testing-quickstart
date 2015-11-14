require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

class ResultsPage < SitePrism::Page
  set_url "https://duckduckgo.com/?q={search_text*}"
  element :search_input, "input#search_form_input"
  element :search_button, "input#search_button"
  element :search_results, "div.result__body"

  def search(text)
    search_input.set text
    search_button.click
  end

end
