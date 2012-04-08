Gem::Specification.new do |s|
  s.name = 'tagcloudbase'
  s.version = '0.1.1'
  s.summary = 'Build a tagcloud from a Dynarex document'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*']
  s.add_dependency('dynarex')
  s.add_dependency('rexslt')
end
