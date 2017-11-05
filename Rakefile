#!/user/bin/env rake

namespace :integration do
    begin
        require 'kitchen/rake_tasks'
        desc 'Run kitchen integration tests'
        Kitchen::RakeTasks.new
    rescue LoadError, StandardError => e
        puts "Error running kitchen test"
    end
end

task default: integration
