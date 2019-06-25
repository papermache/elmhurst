# -*- encoding: utf-8 -*-
# stub: money_helper 1.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "money_helper"
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sahil Yakhmi", "Joey Aghion", "Matt Zikherman", "Sarah Weir"]
  s.date = "2019-04-19"
  s.description = "A simple module to assist in formatting unambiguous prices and price ranges in international currencies in a Roman Script context."
  s.email = "matt@artsymail.com"
  s.homepage = "https://github.com/artsy/money_helper"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "MoneyHelper international price formatting utility."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<money>, ["~> 6.5"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3"])
    else
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<money>, ["~> 6.5"])
      s.add_dependency(%q<appraisal>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<money>, ["~> 6.5"])
    s.add_dependency(%q<appraisal>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3"])
  end
end
