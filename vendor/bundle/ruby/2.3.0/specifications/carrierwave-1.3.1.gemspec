# -*- encoding: utf-8 -*-
# stub: carrierwave 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "carrierwave"
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jonas Nicklas"]
  s.date = "2018-12-29"
  s.description = "Upload files in your Ruby applications, map them to a range of ORMs, store them on different backends."
  s.email = ["jonas.nicklas@gmail.com"]
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md"]
  s.homepage = "https://github.com/carrierwaveuploader/carrierwave"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.5.1"
  s.summary = "Ruby file upload library"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 4.0.0"])
      s.add_runtime_dependency(%q<activemodel>, [">= 4.0.0"])
      s.add_runtime_dependency(%q<mime-types>, [">= 1.16"])
      s.add_development_dependency(%q<pg>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 4.0.0"])
      s.add_development_dependency(%q<cucumber>, ["~> 2.3"])
      s.add_development_dependency(%q<rspec>, ["~> 3.4"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
      s.add_development_dependency(%q<fog-aws>, [">= 0"])
      s.add_development_dependency(%q<fog-google>, ["~> 1.7.1"])
      s.add_development_dependency(%q<fog-local>, [">= 0"])
      s.add_development_dependency(%q<fog-rackspace>, [">= 0"])
      s.add_development_dependency(%q<mini_magick>, [">= 3.6.0"])
      s.add_development_dependency(%q<rmagick>, [">= 0"])
      s.add_development_dependency(%q<timecop>, [">= 0"])
      s.add_development_dependency(%q<generator_spec>, [">= 0.9.1"])
      s.add_development_dependency(%q<pry>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 4.0.0"])
      s.add_dependency(%q<activemodel>, [">= 4.0.0"])
      s.add_dependency(%q<mime-types>, [">= 1.16"])
      s.add_dependency(%q<pg>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 4.0.0"])
      s.add_dependency(%q<cucumber>, ["~> 2.3"])
      s.add_dependency(%q<rspec>, ["~> 3.4"])
      s.add_dependency(%q<webmock>, [">= 0"])
      s.add_dependency(%q<fog-aws>, [">= 0"])
      s.add_dependency(%q<fog-google>, ["~> 1.7.1"])
      s.add_dependency(%q<fog-local>, [">= 0"])
      s.add_dependency(%q<fog-rackspace>, [">= 0"])
      s.add_dependency(%q<mini_magick>, [">= 3.6.0"])
      s.add_dependency(%q<rmagick>, [">= 0"])
      s.add_dependency(%q<timecop>, [">= 0"])
      s.add_dependency(%q<generator_spec>, [">= 0.9.1"])
      s.add_dependency(%q<pry>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 4.0.0"])
    s.add_dependency(%q<activemodel>, [">= 4.0.0"])
    s.add_dependency(%q<mime-types>, [">= 1.16"])
    s.add_dependency(%q<pg>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 4.0.0"])
    s.add_dependency(%q<cucumber>, ["~> 2.3"])
    s.add_dependency(%q<rspec>, ["~> 3.4"])
    s.add_dependency(%q<webmock>, [">= 0"])
    s.add_dependency(%q<fog-aws>, [">= 0"])
    s.add_dependency(%q<fog-google>, ["~> 1.7.1"])
    s.add_dependency(%q<fog-local>, [">= 0"])
    s.add_dependency(%q<fog-rackspace>, [">= 0"])
    s.add_dependency(%q<mini_magick>, [">= 3.6.0"])
    s.add_dependency(%q<rmagick>, [">= 0"])
    s.add_dependency(%q<timecop>, [">= 0"])
    s.add_dependency(%q<generator_spec>, [">= 0.9.1"])
    s.add_dependency(%q<pry>, [">= 0"])
  end
end
