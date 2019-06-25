# -*- encoding: utf-8 -*-
# stub: rack-cors 1.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "rack-cors"
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Calvin Yu"]
  s.date = "2019-03-25"
  s.description = "Middleware that will make Rack-based apps CORS compatible. Fork the project here: https://github.com/cyu/rack-cors"
  s.email = ["me@sourcebender.com"]
  s.homepage = "https://github.com/cyu/rack-cors"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Middleware for enabling Cross-Origin Resource Sharing in Rack apps"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["< 3", ">= 1.16.0"])
      s.add_development_dependency(%q<rake>, ["~> 12.3.0"])
      s.add_development_dependency(%q<minitest>, ["~> 5.11.0"])
      s.add_development_dependency(%q<mocha>, ["~> 1.6.0"])
      s.add_development_dependency(%q<rack-test>, ["~> 1.1.0"])
    else
      s.add_dependency(%q<bundler>, ["< 3", ">= 1.16.0"])
      s.add_dependency(%q<rake>, ["~> 12.3.0"])
      s.add_dependency(%q<minitest>, ["~> 5.11.0"])
      s.add_dependency(%q<mocha>, ["~> 1.6.0"])
      s.add_dependency(%q<rack-test>, ["~> 1.1.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["< 3", ">= 1.16.0"])
    s.add_dependency(%q<rake>, ["~> 12.3.0"])
    s.add_dependency(%q<minitest>, ["~> 5.11.0"])
    s.add_dependency(%q<mocha>, ["~> 1.6.0"])
    s.add_dependency(%q<rack-test>, ["~> 1.1.0"])
  end
end
