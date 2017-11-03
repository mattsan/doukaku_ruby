# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'doukaku/version'

Gem::Specification.new do |spec|
  spec.name          = 'doukaku_ruby'
  spec.version       = Doukaku::VERSION
  spec.authors       = ['Eiji MATSUMOTO']
  spec.email         = ['e.mattsan@gmail.com']

  spec.summary       = 'Doukaku Tools for Ruby'
  spec.description   = 'Doukaku Tools for Ruby'
  spec.homepage      = 'https://github.com/mattsan/doukaku_ruby'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://github.com/mattsan/doukaku_elixir'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
