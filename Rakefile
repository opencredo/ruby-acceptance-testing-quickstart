task default: %w(poltergeist_demo)

# default driver
ENV['DRIVER'] = 'phantom.js'

task :demo do
    puts "Running a demo using #{ENV['DRIVER']}"
    system('cucumber -t @demo -t ~@ignore')
end

task :parallel  do
    puts "Running a parallel demo using #{ENV['DRIVER']}"
    system('bundle exec parallel_cucumber ./ -o "-t @parallel -t ~@ignore"')
end

task :phantomjs => [:phantomjs_driver, :demo]
task :firefox => [:firefox_driver, :demo]
task :chrome => [:chrome_driver, :demo]

task :browserstack => [:browserstack_driver, :demo]

task :parallel_phantomjs => [:phantomjs_driver, :parallel]
task :parallel_firefox => [:firefox_driver, :parallel]
task :parallel_chrome=> [:chrome_driver, :parallel]

task :phantomjs_driver do
    ENV['DRIVER'] = 'phantom.js'
end

task :firefox_driver do
    ENV['DRIVER'] = 'firefox'
end

task :chrome_driver do
    ENV['DRIVER'] = 'chrome'
end

task :browserstack_driver do
    ENV['DRIVER'] = 'browserstack'
end
