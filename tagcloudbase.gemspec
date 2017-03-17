Gem::Specification.new do |s|
  s.name = 'tagcloudbase'
  s.version = '0.1.7'
  s.summary = 'Build a tagcloud from a Dynarex document'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*']
  s.add_runtime_dependency('dynarex', '~> 1.2', '>=1.2.90')
  s.add_runtime_dependency('rexslt', '~> 0.4', '>=0.4.2') 
  s.signing_key = '../privatekeys/tagcloudbase.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/tagcloudbase'
  s.required_ruby_version = '>= 2.1.2'
end
