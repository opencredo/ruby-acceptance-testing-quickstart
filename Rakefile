task default: %w(demo)

task :demo do
  system('cucumber -t @demo -t ~@ignore')
end

task :parallel do
  system('bundle exec parallel_cucumber ./ -o "-t @parallel ~@ignore"')
end
