# -*- encoding: utf-8 -*-
# stub: money 6.13.4 ruby lib

Gem::Specification.new do |s|
  s.name = "money"
  s.version = "6.13.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/RubyMoney/money/issues", "changelog_uri" => "https://github.com/RubyMoney/money/blob/master/CHANGELOG.md", "source_code_uri" => "https://github.com/RubyMoney/money/" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Shane Emmons", "Anthony Dmitriyev"]
  s.date = "2019-06-10"
  s.description = "A Ruby Library for dealing with money and currency conversion."
  s.email = ["shane@emmons.io", "anthony.dmitriyev@gmail.com"]
  s.homepage = "https://rubymoney.github.io/money"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "A Ruby Library for dealing with money and currency conversion."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<i18n>, ["<= 2", ">= 0.6.4"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.4"])
      s.add_development_dependency(%q<yard>, ["~> 0.9.11"])
      s.add_development_dependency(%q<kramdown>, ["~> 1.1"])
    else
      s.add_dependency(%q<i18n>, ["<= 2", ">= 0.6.4"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3.4"])
      s.add_dependency(%q<yard>, ["~> 0.9.11"])
      s.add_dependency(%q<kramdown>, ["~> 1.1"])
    end
  else
    s.add_dependency(%q<i18n>, ["<= 2", ">= 0.6.4"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3.4"])
    s.add_dependency(%q<yard>, ["~> 0.9.11"])
    s.add_dependency(%q<kramdown>, ["~> 1.1"])
  end
end
