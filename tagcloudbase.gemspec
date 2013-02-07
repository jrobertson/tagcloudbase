Gem::Specification.new do |s|
  s.name = 'tagcloudbase'
  s.version = '0.1.3'
  s.summary = 'Build a tagcloud from a Dynarex document'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*']
  s.add_dependency('dynarex')
  s.add_dependency('rexslt') 
  s.signing_key = '../privatekeys/tagcloudbase.pem'
  s.cert_chain  = ['gem-public_cert.pem']
end
