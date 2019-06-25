# -*- encoding: utf-8 -*-
# stub: stock_quote 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "stock_quote"
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ty Rauber"]
  s.date = "2018-03-22"
  s.description = "Retrieve book, chart, company, delayed quote, dividends, earnings, effective spread, financials, stats, lists, logo, news, OHLC, open/close, peers, previous, price, quote, relevant, splits, timeseries, volume by venue and batch requests through IEX (iextrading.com/developer)"
  s.email = ["tyrauber@mac.com"]
  s.homepage = "https://github.com/tyrauber/stock_quote"
  s.licenses = ["MIT"]
  s.rubyforge_project = "stock_quote"
  s.rubygems_version = "2.5.1"
  s.summary = "A ruby gem that retrieves real-time stock quotes from IEX."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 3.4"])
      s.add_development_dependency(%q<vcr>, ["~> 3.0.1"])
      s.add_development_dependency(%q<webmock>, ["~> 1.24.6"])
      s.add_runtime_dependency(%q<rest-client>, ["~> 2.0.2"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, ["~> 3.4"])
      s.add_dependency(%q<vcr>, ["~> 3.0.1"])
      s.add_dependency(%q<webmock>, ["~> 1.24.6"])
      s.add_dependency(%q<rest-client>, ["~> 2.0.2"])
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 3.4"])
    s.add_dependency(%q<vcr>, ["~> 3.0.1"])
    s.add_dependency(%q<webmock>, ["~> 1.24.6"])
    s.add_dependency(%q<rest-client>, ["~> 2.0.2"])
    s.add_dependency(%q<json>, [">= 0"])
  end
end
