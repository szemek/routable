Gem::Specification.new do |s|
  s.name          = 'routable'
  s.version       = '0.1'
  s.date          = '2013-08-04'
  s.summary       = "Routable"
  s.description   = "Generates spec/routing/routable_spec.rb for paths in your routes.rb"
  s.authors       = ["Przemysław Dąbek"]
  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
  s.homepage      = 'http://github.com/szemek/routable'
  s.license       = 'MIT'
end
