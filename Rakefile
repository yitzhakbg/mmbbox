require 'bundler'
# Bundler::GemHelper.install_tasks

# require 'middleman-core/version'

desc 'Initial install and compile'
task :install do
  sh 'npm install && bower install && bundle update && export PATH=./bin:$PATH'
end

desc 'Build mlddleman site'
task :mmbuild do
  sh 'middleman build'
end
