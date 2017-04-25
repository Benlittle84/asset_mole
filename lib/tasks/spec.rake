desc 'Run rspec tests'
task :spec do
  Rake::Task['spec'].invoke
end
