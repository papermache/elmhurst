# -*- encoding: utf-8 -*-
# stub: iex-ruby-client 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "iex-ruby-client"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Daniel Doubrovkine"]
  s.date = "2019-04-23"
  s.email = "dblock@dblock.org"
  s.homepage = "http://github.com/dblock/iex-ruby-client"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "IEX Finance API Ruby client with support for retrieving stock quotes."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, [">= 0.9"])
      s.add_runtime_dependency(%q<faraday_middleware>, [">= 0"])
      s.add_runtime_dependency(%q<hashie>, [">= 0"])
      s.add_runtime_dependency(%q<money_helper>, [">= 0"])
      s.add_development_dependency(%q<rake>, ["~> 10"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, ["= 0.67.2"])
      s.add_development_dependency(%q<vcr>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
    else
      s.add_dependency(%q<faraday>, [">= 0.9"])
      s.add_dependency(%q<faraday_middleware>, [">= 0"])
      s.add_dependency(%q<hashie>, [">= 0"])
      s.add_dependency(%q<money_helper>, [">= 0"])
      s.add_dependency(%q<rake>, ["~> 10"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rubocop>, ["= 0.67.2"])
      s.add_dependency(%q<vcr>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 0"])
    end
  else
    s.add_dependency(%q<faraday>, [">= 0.9"])
    s.add_dependency(%q<faraday_middleware>, [">= 0"])
    s.add_dependency(%q<hashie>, [">= 0"])
    s.add_dependency(%q<money_helper>, [">= 0"])
    s.add_dependency(%q<rake>, ["~> 10"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rubocop>, ["= 0.67.2"])
    s.add_dependency(%q<vcr>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 0"])
  end
end
