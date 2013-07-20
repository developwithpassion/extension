# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'extension'
  s.summary = 'Extension Library'
  s.version = '0.0.1'
  s.authors = ['The Sans Collective']
  s.homepage = 'https://github.com/Sans/extension'
  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.9.2'
end
