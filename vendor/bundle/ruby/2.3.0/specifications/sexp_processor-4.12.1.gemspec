# -*- encoding: utf-8 -*-
# stub: sexp_processor 4.12.1 ruby lib

Gem::Specification.new do |s|
  s.name = "sexp_processor"
  s.version = "4.12.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryan Davis"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDPjCCAiagAwIBAgIBAzANBgkqhkiG9w0BAQsFADBFMRMwEQYDVQQDDApyeWFu\nZC1ydWJ5MRkwFwYKCZImiZPyLGQBGRYJemVuc3BpZGVyMRMwEQYKCZImiZPyLGQB\nGRYDY29tMB4XDTE4MTIwNDIxMzAxNFoXDTE5MTIwNDIxMzAxNFowRTETMBEGA1UE\nAwwKcnlhbmQtcnVieTEZMBcGCgmSJomT8ixkARkWCXplbnNwaWRlcjETMBEGCgmS\nJomT8ixkARkWA2NvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALda\nb9DCgK+627gPJkB6XfjZ1itoOQvpqH1EXScSaba9/S2VF22VYQbXU1xQXL/WzCkx\ntaCPaLmfYIaFcHHCSY4hYDJijRQkLxPeB3xbOfzfLoBDbjvx5JxgJxUjmGa7xhcT\noOvjtt5P8+GSK9zLzxQP0gVLS/D0FmoE44XuDr3iQkVS2ujU5zZL84mMNqNB1znh\nGiadM9GHRaDiaxuX0cIUBj19T01mVE2iymf9I6bEsiayK/n6QujtyCbTWsAS9Rqt\nqhtV7HJxNKuPj/JFH0D2cswvzznE/a5FOYO68g+YCuFi5L8wZuuM8zzdwjrWHqSV\ngBEfoTEGr7Zii72cx+sCAwEAAaM5MDcwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAw\nHQYDVR0OBBYEFEfFe9md/r/tj/Wmwpy+MI8d9k/hMA0GCSqGSIb3DQEBCwUAA4IB\nAQCbJwLmpJR2PomLU+Zzw3KRzH/hbyUWc/ftru71AopZ1fy4iY9J/BW5QYKVYwbP\nV0FSBWtvfI/RdwfKGtuGhPKECZgmLieGuZ3XCc09qPu1bdg7i/tu1p0t0c6163ku\nnDMDIC/t/DAFK0TY9I3HswuyZGbLW7rgF0DmiuZdN/RPhHq2pOLMLXJmFclCb/im\n9yToml/06TJdUJ5p64mkBs0TzaK66DIB1Smd3PdtfZqoRV+EwaXMdx0Hb3zdR1JR\nEm82dBUFsipwMLCYj39kcyHWAxyl6Ae1Cn9r/ItVBCxoeFdrHjfavnrIEoXUt4bU\nUfBugfLD19bu3nvL+zTAGx/U\n-----END CERTIFICATE-----\n"]
  s.date = "2019-06-04"
  s.description = "sexp_processor branches from ParseTree bringing all the generic sexp\nprocessing tools with it. Sexp, SexpProcessor, Environment, etc... all\nfor your language processing pleasure."
  s.email = ["ryand-ruby@zenspider.com"]
  s.extra_rdoc_files = ["History.rdoc", "Manifest.txt", "README.rdoc"]
  s.files = ["History.rdoc", "Manifest.txt", "README.rdoc"]
  s.homepage = "https://github.com/seattlerb/sexp_processor"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.rubygems_version = "2.5.1"
  s.summary = "sexp_processor branches from ParseTree bringing all the generic sexp processing tools with it"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rdoc>, ["< 7", ">= 4.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.17"])
    else
      s.add_dependency(%q<rdoc>, ["< 7", ">= 4.0"])
      s.add_dependency(%q<hoe>, ["~> 3.17"])
    end
  else
    s.add_dependency(%q<rdoc>, ["< 7", ">= 4.0"])
    s.add_dependency(%q<hoe>, ["~> 3.17"])
  end
end
