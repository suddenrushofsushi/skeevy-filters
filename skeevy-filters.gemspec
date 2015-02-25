$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')

Gem::Specification.new do |s|
  s.name        = 'skeevy-filters'
  s.version     = '1.0.0'
  s.date        = '2015-02-25'
  s.summary     = "Skeevy Filter Collection"
  s.description = "A small collection of filters for use with Skeevy"
  s.authors     = ["Craig Waterman"]
  s.email       = 'craigwaterman@gmail.com'
  s.homepage    =
      'http://rubygems.org/gems/skeevy'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']

  s.add_dependency 'skeevy', '~> 1.0'
  s.add_dependency 'snappy'

  s.add_development_dependency 'rspec',   '~> 3.1'
  s.add_development_dependency 'guard-rspec', '~> 4.4'
end
