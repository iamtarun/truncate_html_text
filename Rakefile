require 'rake/testtask'
require "bundler/gem_tasks"

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['lib/test/test*.rb']
  t.verbose = true
end

desc 'Run tests'
task :default => :test