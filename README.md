Ruby Acceptance Testing Quickstart
==================================

Web acceptance testing - where do you start? This is a quickstart project with good practice that you can clone and extend, rather than having to google constantly to find out the basics. There's some very powerful stuff included in this project which is ready to use out of the box, including parallel execution, browserstack integration, and aliased random data persistence.

Features
--------
- Acceptance tests written in plain English
- Page Object pattern
- Parallel test execution
- Test data persistence across cucumber step definitions
- Powerful DSLs to enforce good practice and terse code
- Switchable drivers / browsers
- BrowserStack support for remote execution
- Headless browser testing
- Aliased and randomised data generation to prevent data collisions
- Rake execution tasks

Dependencies
------------
Make sure you have the following installed before starting:

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) (preferably [with RVM](https://rvm.io/))
- [Ruby bundler gem](http://bundler.io/)
- [Phantom.js](http://phantomjs.org/download.html)
- [Firefox](https://www.mozilla.org/en-US/firefox/new/) (optional)
- [Chromedriver](http://chromedriver.storage.googleapis.com/index.html) (optional)

If you're using OSX, Phantom.js and Chromedriver are available via Homebrew.

Key Tools
---------

- [Ruby](https://www.ruby-lang.org/en/) - a dynamic, simple programming language.
- [Rake](http://rake.rubyforge.org/) - a build utility for Ruby.
- [Cucumber](https://cucumber.io/) - a BDD tool for writing acceptance tests in plain English.
- [Capybara](http://jnicklas.github.io/capybara/) - a driver-agnostic web acceptance test framework and DSL.
- [SitePrism](https://github.com/natritmeyer/site_prism) - a page object DSL for Capybara.
- [Poltergeist](https://github.com/teampoltergeist/poltergeist) - a Capybara driver for the headless browser Phantom.js.
- [Selenium WebDriver](http://docs.seleniumhq.org/) - Browser automation framework.
- [BrowserStack](https://www.browserstack.com/) - Platform as a service based cross browser/OS test execution.
- [RSpec Expectations](https://relishapp.com/rspec/rspec-expectations/docs) - a powerful assertions DSL.
- [Parallel_Tests](https://github.com/grosser/parallel_tests) - A gem for parallel threading of cucumber tests.
- [Factory Girl](https://github.com/thoughtbot/factory_girl) - A data template factory for producing test data.
- [FFaker](https://github.com/ffaker/ffaker) - A random data generation library.
- [Relish](https://relishapp.com/) - Automatic feature documention generation for Cucumber

Installing and using
--------------------
From the command line:

1. Clone the project: `git clone https://github.com/burythehammer/ruby-acceptance-testing-quickstart`
2. Navigate to the folder and `bundle install` to install all necessary gems.
3. Start running tests using the available rake tasks.

Available Rake Tasks
--------------------

`rake demo` will run a headless browser test.

`rake parallel_demo` will execute a demo parallel test.

To specify your browser, use the following (hopefully self-explanatory) tasks:

- `rake firefox`
- `rake chrome`
- `rake phantomjs`
- `rake parallel_firefox`
- `rake parallel_chrome`
- `rake parallel_phantomjs`

Or if you wish to run every browser, you can run `rake crossbrowser`.

Browserstack Configuration
--------------------------

Browserstack is available via `rake browserstack`. You will need to set up your environment variables via the .env file first, to specify your login credentials and required browser/OS. To use this as part of a secure CI environment, Browserstack have an excellent guide on [their website](https://www.browserstack.com/automate/continuous-integration) to keep your credentials secure.
