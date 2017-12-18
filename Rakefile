task default: %w[lint style kitchen:all deploy]

require 'rubocop/rake_task'
require 'foodcritic'
require 'kitchen/rake_tasks'

RuboCop::RakeTask.new(:lint) do |tsk|
  tsk.options = ['-d']
  tsk.fail_on_error = true
  tsk.verbose = true
end

FoodCritic::Rake::LintTask.new(:style) do |tsk|
end

Kitchen::RakeTasks.new

task :deploy do
  lv = local_version
  sv = server_version

  if lv > sv
    puts "Uploading version #{lv}."
    sh 'knife cookbook upload chef_base_linux'
    puts "Done."
  else
    puts "Server version #{sv} is newer or same as local version #{lv}."
  end
end

def server_version
  require 'Open3'
  stdout_str, status = Open3.capture2('knife cookbook show chef_base_linux')

  newestVersion = Gem::Version.new('0.0.0')

  stdout_str.split(' ').each { |e|
    begin
      v = Gem::Version.new(e)
      if v > newestVersion
        newestVersion = v
      end
    rescue
      puts "#{e} is not a valid version number"
    end
  }

  newestVersion
end

def local_version
  require 'json'
  
  metadata = JSON.load(File.new('metadata.json'))
  v = Gem::Version.new(metadata['version'])
end
