require 'rake'
require File.join([ File.dirname(__FILE__), 'lib', 'opendelivery', 'version.rb' ])

spec = Gem::Specification.new do |s|
  s.name          = 'opendelivery'
  s.license       = 'MIT'
  s.version       = Opendelivery::VERSION
  s.author        = [ "Brian Jakovich", "Jonny Sywulak", "Stelligent" ]
  s.email         = 'brian.jakovich@stelligent.com'
  s.homepage      = 'http://stelligent.com'
  s.platform      = Gem::Platform::RUBY
  s.summary       = "Open Delivery tools and utilities"
  s.description   = "A collection of tools that are used in the Open Delivery platform."
  s.files         = FileList[ "lib/*.rb","lib/opendelivery/*.rb" ]

  s.require_paths << 'lib'
  s.required_ruby_version = '>= 1.9.3'
  s.add_development_dependency('aws-sdk', '1.15.0')
  s.add_runtime_dependency('aws-sdk', '1.15.0')
end