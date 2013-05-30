# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'peek-env_vars/version'

Gem::Specification.new do |gem|
  gem.name          = 'peek-env_vars'
  gem.version       = Peek::EnvVars::VERSION
  gem.authors       = ['locochris']
  gem.description   = %q{Take a peek into the ENV vars of your Rails application.}
  gem.summary       = %q{Take a peek into the ENV vars of your Rails application.}
  gem.homepage      = 'https://github.com/locochris/peek-env_vars'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'peek'
end
