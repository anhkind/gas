lib = File.expand_path("../lib", __FILE__)
$:.unshift lib unless $:.include? lib

require "gas/version"

Gem::Specification.new do |s|
  s.name        = "simple_gas"
  s.version     = Gas::VERSION
  s.authors     = "Fredrik Wallgren (re-work Anh Nguyen)"
  s.email       = "fredrik.wallgren@gmail.com"
  s.homepage    = "https://github.com/anhkind/gas"
  s.summary     = "Manage your git author accounts"
  s.description = "Gas is a utility to keep track of your git authors. Add them to gas and switch at any time. Great if you use one author at work and one at home or if you are doing pair programming.  Includes SSH support."

  s.rubyforge_project = s.name
  s.license = 'MIT'

  s.rdoc_options     = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.textile LICENSE]

  s.add_dependency 'thor',    '~> 0.14.6'
  s.add_dependency 'sshkey',  '~> 1.2.2'
  s.add_dependency 'highline'
  s.add_dependency 'json'
  s.add_dependency 'jruby-openssl' if RUBY_PLATFORM == "java"

  s.add_development_dependency 'rake'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rr'
  s.add_development_dependency 'vcr'
  s.add_development_dependency 'pry'

  s.files = Dir.glob("{bin,lib,spec,config}/**/*") + ['LICENSE', 'README.textile']
  s.executables = ['gas']
  s.require_path = ['lib']
end

