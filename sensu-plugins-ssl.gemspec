lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'
require_relative 'lib/sensu-plugins-ssl'

Gem::Specification.new do |s|
  s.authors                = ['Sensu-Plugins and contributors']
  s.date                   = Date.today.to_s
  s.description            = 'This plugin provides native SSL instrumentation
                              for monitoring, including: hostname and chain
                              verification, cert and crl expiry, and Qualys SSL Labs reporting'
  s.email                  = '<sensu-users@googlegroups.com>'
  s.executables            = Dir.glob('bin/**/*.rb').map { |file| File.basename(file) }
  s.files                  = Dir.glob('{bin,lib}/**/*') + %w[LICENSE README.md CHANGELOG.md]
  s.homepage               = 'https://github.com/sensu-plugins/sensu-plugins-ssl'
  s.license                = 'MIT'
  s.metadata               = { 'maintainer'         => 'sensu-plugin',
                               'development_status' => 'active',
                               'production_status'  => 'unstable - testing recommended',
                               'release_draft'      => 'false',
                               'release_prerelease' => 'false' }
  s.name                   = 'sensu-plugins-ssl'
  s.platform               = Gem::Platform::RUBY
  s.post_install_message   = 'You can use the embedded Ruby by setting EMBEDDED_RUBY=true in /etc/default/sensu'
  s.require_paths          = ['lib']
  s.required_ruby_version  = '>= 2.1.0'
  s.summary                = 'Sensu plugins for SSL'
  s.test_files             = s.files.grep(%r{^(test|spec|features)/})
  s.version                = SensuPluginsSSL::Version::VER_STRING
  s.add_runtime_dependency 'sensu-plugin', '>= 1.2', '< 5.0'
  s.add_development_dependency 'bundler',                   '~> 2.1'
  s.add_development_dependency 'codeclimate-test-reporter', '~> 1.0'
  s.add_development_dependency 'github-markup',             '~> 3.0'
  s.add_development_dependency 'pry',                       '~> 0.10'
  s.add_development_dependency 'rake',                      '~> 12.3'
  s.add_development_dependency 'redcarpet',                 '~> 3.2'
  s.add_development_dependency 'rspec',                     '~> 3.1'
  s.add_development_dependency 'rubocop',                   '~> 0.50.0'
  s.add_development_dependency 'yard',                      '~> 0.8'
  s.add_development_dependency 'timecop',                   '~> 0.9.1'
end
