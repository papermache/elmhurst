# -*- encoding: utf-8 -*-
# stub: alertifyjs-rails 1.11.2 ruby lib

Gem::Specification.new do |s|
  s.name = "alertifyjs-rails"
  s.version = "1.11.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["mkhairi"]
  s.date = "2019-03-28"
  s.description = "Use Alertify.js (alertifyjs.com) with Rails 3, 4 and 5"
  s.email = ["khairi@labs.my"]
  s.homepage = "https://github.com/mkhairi/alertifyjs-rails.git"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "This gem provides the Alertify.js (alertifyjs.com) for Rails applications"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
  end
end
