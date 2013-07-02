# This code is free software; you can redistribute it and/or modify it under
# the terms of the new BSD License.
#
# Copyright (c) 2011-2013, Sebastian Staudt

require File.expand_path(File.dirname(__FILE__) + '/lib/rbzip2/version')

Gem::Specification.new do |s|
  s.name        = 'rbzip2'
  s.version     = RBzip2::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = [ 'Sebastian Staudt' ]
  s.email       = [ 'koraktor@gmail.com' ]
  s.homepage    = 'https://github.com/koraktor/rbzip2'
  s.summary     = 'Pure Ruby impementation of bzip2'
  s.description = 'A pure Ruby implementation of the bzip2 compression algorithm.'

  s.add_development_dependency 'ffi', '~> 1.9.0'
  s.add_development_dependency 'mocha', '~> 0.10.0'
  s.add_development_dependency 'rake', '~> 10.1.0'
  s.add_development_dependency 'rspec-core', '~> 2.13.1'
  s.add_development_dependency 'rspec-expectations', '~> 2.13.0'
  s.add_development_dependency 'yard', '~> 0.7.3'

  s.files         = Dir['{lib}/**/*.rb', 'LICENSE', 'Rakefile', 'README.md']
  s.test_files    = Dir['{spec}/**/*_spec.rb']
  s.require_paths = [ 'lib' ]
end
