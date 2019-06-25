# -*- encoding: utf-8 -*-
# stub: clockwork 2.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "clockwork"
  s.version = "2.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Adam Wiggins", "tomykaira"]
  s.date = "2018-02-15"
  s.description = "A scheduler process to replace cron, using a more flexible Ruby syntax running as a single long-running process.  Inspired by rufus-scheduler and resque-scheduler."
  s.email = ["adam@heroku.com", "tomykaira@gmail.com"]
  s.executables = ["clockwork", "clockworkd"]
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md", "bin/clockwork", "bin/clockworkd"]
  s.homepage = "http://github.com/Rykian/clockwork"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "A scheduler process to replace cron."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<tzinfo>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<daemons>, [">= 0"])
      s.add_development_dependency(%q<minitest>, ["~> 5.8"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
    else
      s.add_dependency(%q<tzinfo>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<daemons>, [">= 0"])
      s.add_dependency(%q<minitest>, ["~> 5.8"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
    end
  else
    s.add_dependency(%q<tzinfo>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<daemons>, [">= 0"])
    s.add_dependency(%q<minitest>, ["~> 5.8"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
  end
end
