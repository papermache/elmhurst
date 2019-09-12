# -*- encoding: utf-8 -*-
# stub: sassc 2.1.0.pre2 x86_64-linux lib

Gem::Specification.new do |s|
  s.name = "sassc"
  s.version = "2.1.0.pre2"
  s.platform = "x86_64-linux"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryan Boland"]
  s.date = "2019-06-05"
  s.description = "Use libsass with Ruby!"
  s.email = ["ryan@tanookilabs.com"]
  s.homepage = "https://github.com/sass/sassc-ruby"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.5.1"
  s.summary = "Use libsass with Ruby!"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, ["~> 5.5.1"])
      s.add_development_dependency(%q<minitest-around>, [">= 0"])
      s.add_development_dependency(%q<test_construct>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rake-compiler>, [">= 0"])
      s.add_development_dependency(%q<rake-compiler-dock>, [">= 0"])
      s.add_runtime_dependency(%q<ffi>, ["~> 1.9"])
    else
      s.add_dependency(%q<minitest>, ["~> 5.5.1"])
      s.add_dependency(%q<minitest-around>, [">= 0"])
      s.add_dependency(%q<test_construct>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rake-compiler>, [">= 0"])
      s.add_dependency(%q<rake-compiler-dock>, [">= 0"])
      s.add_dependency(%q<ffi>, ["~> 1.9"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 5.5.1"])
    s.add_dependency(%q<minitest-around>, [">= 0"])
    s.add_dependency(%q<test_construct>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rake-compiler>, [">= 0"])
    s.add_dependency(%q<rake-compiler-dock>, [">= 0"])
    s.add_dependency(%q<ffi>, ["~> 1.9"])
  end
end
