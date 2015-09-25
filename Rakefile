require "rubygems"
require 'rake'
require 'rake/testtask'

task :default => :spec

desc 'Run all spec files'
task :spec do
  begin
    require 'rspec/core/rake_task'
    RSpec::Core::RakeTask.new(:spec)
  rescue LoadError
  end
end
