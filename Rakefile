task default: %w(demo)

@default_driver = 'phantom.js'
@available_browsers = ["phantomjs", "firefox", "chrome"]

def set_driver driver
  driver ||= @default_driver
  ENV['DRIVER'] = driver
end

def demo driver
  set_driver driver
  puts "Running a demo using #{ENV['DRIVER']}"
  system('cucumber -t @demo -t ~@ignore')
end

def parallel_demo driver
  set_driver driver
  puts "Running a parallel demo using #{ENV['DRIVER']}"
  system('bundle exec parallel_cucumber ./ -o "-t @parallel-demo -t ~@ignore"')
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
  @available_browsers.each { |browser| Rake::Task[browser].invoke }
end

task :parallel_crossbrowser do
  @available_browsers.each { |browser| Rake::Task["parallel_" + browser].invoke }
end
