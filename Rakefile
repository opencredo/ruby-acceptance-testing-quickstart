task default: %w[demo]

task :demo do
  system("cucumber --tags @demo")
end

task :parallel do
  system('bundle exec parallel_cucumber ./ -o "-t @parallel"')
end
