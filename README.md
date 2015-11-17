Ruby Acceptance Testing Quickstart
==================================

Web acceptance testing - where do you start? This is a quickstart project with good practice that you can clone and extend, rather than having to google constantly to find out the basics.

Concepts Included
-----------------

- Acceptance tests written in plain English
- Page Object pattern
- Parallel test execution
- Test data persistence across cucumber step definitions
- Powerful DSLs to enforce good practice and terse code
- Switchable drivers / browsers
- Headless browser testing
- Aliased and randomised data generation to prevent data collisions
- Standardised execution tasks

Dependencies
------------

Make sure you have the following installed before starting:

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) (preferably [with RVM](https://rvm.io/))
- [Phantom.js](http://phantomjs.org/download.html)
- [Ruby bundler gem](http://bundler.io/)
- [Firefox](https://www.mozilla.org/en-US/firefox/new/) (optional)
- [Chrome](https://www.google.com/chrome/browser/desktop/) (optional)

Key Tools
---------

- [Ruby](https://www.ruby-lang.org/en/) - a dynamic, simple programming language.
- [Rake](http://rake.rubyforge.org/) - a build utility for Ruby.
- [Cucumber](https://cucumber.io/) - a BDD tool for writing acceptance tests in plain English.
- [Capybara](http://jnicklas.github.io/capybara/) - a driver-agnostic web acceptance test framework and DSL.
- [SitePrism](https://github.com/natritmeyer/site_prism) - a page object DSL for Capybara.
- [Poltergeist](https://github.com/teampoltergeist/poltergeist) - a Capybara driver for Phantom.js, a headless browser
- [Selenium WebDriver](http://docs.seleniumhq.org/) - Browser automation framework.
- [RSpec Expectations](https://relishapp.com/rspec/rspec-expectations/docs) - a powerful assertions DSL.
- [Parallel_Tests](https://github.com/grosser/parallel_tests) - A gem for parallel threading of cucumber tests.
- [Factory Girl](https://github.com/thoughtbot/factory_girl) - A data template factory for producing test data.
- [FFaker](https://github.com/ffaker/ffaker) - A random data generation tool.

Usage
---------

From the command line (OS X and Linux only):

1. Clone the project: `git clone https://github.com/burythehammer/ruby-acceptance-testing-quickstart`
2. Navigate to the folder and `bundle install` to install all necessary gems.
3. To run the standard demo, run `rake` or `rake demo` to run some standard headless tests.
4. To run the parallel demo, run `rake parallel` and it will execute 25 versions of the standard demo across multiple threads.
