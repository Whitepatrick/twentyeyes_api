require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
t.pattern = Dir.glob('spec/*_spec.rb')
end
task :default => :spec

task :create_db do
  exec 'psql < config/create_twentyeyesdb.sql'
end

task :insert_rows do
  exec 'psql < config/insert_rows.sql'
end
