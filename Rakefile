require "bundler/gem_tasks"
require 'rspec/core/rake_task'

desc "Run RSpec"
RSpec::Core::RakeTask.new do |t|
  t.verbose = false
  t.pattern = ['spec/**/*_spec.rb']
  t.rspec_opts = ['--options', 'spec/spec.opts']
end

task :default => [:spec]
