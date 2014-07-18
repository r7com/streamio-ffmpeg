require 'bundler'
Bundler.require

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new('spec') do |t|
  t.pattern = FileList['spec/**/*_spec.rb']
end

task :default => :spec

desc "Push a new version to Rubygems"
task :publish do
  require 'ffmpeg/version'

  sh "gem build r7streamio_ffmpeg.gemspec"
  sh "gem push r7streamio_ffmpeg-#{FFMPEG::VERSION}.gem"
  sh "git tag v#{FFMPEG::VERSION}"
  sh "git push origin v#{FFMPEG::VERSION}"
  sh "git push origin master"
  sh "rm r7streamio_ffmpeg-#{FFMPEG::VERSION}.gem"
end
