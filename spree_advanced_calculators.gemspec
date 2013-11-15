Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_advanced_calculators'
  s.version     = '2.0.0'
  s.summary     = 'Set of advanced calculators'
  #s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.9.3'

  # s.author            = 'David Heinemeier Hansson'
  # s.email             = 'david@loudthinking.com'
  # s.homepage          = 'http://www.rubyonrails.org'
  # s.rubyforge_project = 'actionmailer'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*']
  s.require_path = 'lib'

  s.has_rdoc = true

  s.add_dependency('spree_core', '>= 2.0.0')
end
