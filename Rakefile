# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)

  desc 'Run turnip acceptance tests'
  RSpec::Core::RakeTask.new(:turnip) do |t|
    t.pattern = './spec{,/*/**}/*.feature'
    t.rspec_opts = ['-r turnip/rspec']
  end

  task default: [:spec, :turnip]
rescue
  puts 'Cannot load RSpec'
end

Rails.application.load_tasks
