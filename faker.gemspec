$:.push File.expand_path("../lib", __FILE__)
#require "faker/version"   will use proper versioning if I ever want to update this

Gem::Specification.new do |s|
  s.name        = "faker"
  s.version     = "1.0"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Christopher Fong"]
  s.email       = ["christopher.m.fong@gmail.com"]
  #s.homepage    = "http://faker.rubyforge.org" not publishing
  s.summary     = %q{Easily generate fake data}
  s.description = %q{Faker, a port of Data::Faker from Perl, is used to easily generate fake data: names, addresses, phone numbers, etc. Now extended with song lyrics option (similar to Lorem).}

  #s.rubyforge_project = "faker"

  s.add_dependency('i18n', '~> 0.5')

  s.files         = `git ls-files -- lib/*`.split("\n") + %w(History.txt License.txt README.md)
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
