# frozen_string_literal: true

desc 'Run all tests and checks.'
task test: :environment do
  require 'brakeman'
  
  Rake::Task['spec'].invoke
  Brakeman.run({app_path: '.', print_report: true})
  Rake::Task['bundle:audit:update'].invoke
  Rake::Task['bundle:audit'].invoke
  # RuboCop task must come at the end, as it doesn't let other tasks run after it.
  Rake::Task['rubocop'].invoke
end
