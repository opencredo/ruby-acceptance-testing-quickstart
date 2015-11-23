task default: %w(demo)

@default_driver = 'phantom.js'
@browsers = %w(phantomjs firefox chrome)

def use_driver(driver)
  ENV['DRIVER'] = driver || @default_driver
end

def demo(driver)
  use_driver driver
  puts "Running a demo using #{ENV['DRIVER']}"
  system('cucumber -t @demo -t ~@ignore')
  fail 'build failed!' unless $?.exitstatus == 0
end

def parallel_demo(driver)
  use_driver driver
  puts "Running a parallel demo using #{ENV['DRIVER']}"
  system('bundle exec parallel_cucumber ./ -o "-t @parallel-demo -t ~@ignore"')
  fail 'build failed!' unless $?.exitstatus == 0
end

task :demo do
  demo 'phantomjs'
end

task :phantomjs do
  demo 'phantomjs'
end

task :firefox do
  demo 'firefox'
end

task :chrome do
  demo 'chrome'
end

task :browserstack do
  demo 'browserstack'
end

task :parallel_phantomjs do
  parallel_demo 'phantomjs'
end

task :parallel_firefox do
  parallel_demo 'firefox'
end

task :parallel_chrome do
  parallel_demo 'chrome'
end

task :crossbrowser do
  @browsers.each { |browser| Rake::Task[browser].invoke }
end

task :parallel_crossbrowser do
  @browsers.each { |browser| Rake::Task['parallel_' + browser].invoke }
end
