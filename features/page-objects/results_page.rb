require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

class SearchResultSection < SitePrism::Section
  element :title, 'h2.result__title'
  element :link, 'a.result__a'
  element :snippet, 'a.result__snippet'
end

class ResultsPage < SitePrism::Page
  set_url 'https://duckduckgo.com/?q={search_text*}'
  element :search_input, 'input#search_form_input'
  element :search_button, 'input#search_button'
  sections :search_results, SearchResultSection, 'div.result__body'

  def search(text)
    search_input.set text
    search_button.click
  end

  def search_result_titles
    search_results.map(&:title)
  end

  def search_result_links
    search_results.map { |sr| sr.link['href'] }
  end
end
