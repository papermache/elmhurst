# -*- encoding: utf-8 -*-
# stub: devise-bootstrap-views 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "devise-bootstrap-views"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Yinghai Zhao"]
  s.date = "2018-08-20"
  s.description = "Bootstrap views for Devise with I18n support."
  s.email = ["zyinghai@gmail.com"]
  s.homepage = "https://github.com/hisea/devise-bootstrap-views"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Bootstrap views for Devise."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, ["~> 11.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, ["~> 11.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, ["~> 11.0"])
  end
end
