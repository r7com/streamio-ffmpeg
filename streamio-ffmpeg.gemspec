# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require "ffmpeg/version"

Gem::Specification.new do |s|
  s.name        = "r7streamio_ffmpeg"
  s.version     = FFMPEG::VERSION
  s.authors     = ["Rodrigo Martins"]
  s.email       = ["rodrigo@rrmartins.com"]
  s.homepage    = "http://github.com/r7com/streamio-ffmpeg"
  s.summary     = "Wraps ffmpeg to read metadata and transcodes videos. Copy with changes on github.com/streamio/streamio-ffmpeg"

  s.add_development_dependency("rspec", "~> 2.14")
  s.add_development_dependency("rake", "~> 10.1")

  s.files        = Dir.glob("lib/**/*") + %w(README.md LICENSE CHANGELOG)

  s.required_ruby_version = '>= 1.9.3'
end
