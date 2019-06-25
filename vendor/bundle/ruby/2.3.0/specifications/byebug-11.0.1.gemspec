# -*- encoding: utf-8 -*-
# stub: byebug 11.0.1 ruby lib
# stub: ext/byebug/extconf.rb

Gem::Specification.new do |s|
  s.name = "byebug"
  s.version = "11.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["David Rodriguez", "Kent Sibilev", "Mark Moseley"]
  s.bindir = "exe"
  s.date = "2019-03-18"
  s.description = "Byebug is a Ruby debugger. It's implemented using the\n    TracePoint C API for execution control and the Debug Inspector C API for\n    call stack navigation.  The core component provides support that front-ends\n    can build on. It provides breakpoint handling and bindings for stack frames\n    among other things and it comes with an easy to use command line interface."
  s.email = "deivid.rodriguez@riseup.net"
  s.executables = ["byebug"]
  s.extensions = ["ext/byebug/extconf.rb"]
  s.extra_rdoc_files = ["CHANGELOG.md", "CONTRIBUTING.md", "README.md", "GUIDE.md"]
  s.files = ["CHANGELOG.md", "CONTRIBUTING.md", "GUIDE.md", "README.md", "exe/byebug", "ext/byebug/extconf.rb"]
  s.homepage = "https://github.com/deivid-rodriguez/byebug"
  s.licenses = ["BSD-2-Clause"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  s.rubygems_version = "2.5.1"
  s.summary = "Ruby fast debugger - base + CLI"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 2.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 2.0"])
  end
end
