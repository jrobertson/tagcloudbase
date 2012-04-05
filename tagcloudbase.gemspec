Gem::Specification.new do |s|
  s.name = 'tagcloudbase'
  s.version = '0.1.0'
  s.summary = 'Build a tagcloud from a Dynarex document'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb']
  s.add_dependency('dynarex')
end
