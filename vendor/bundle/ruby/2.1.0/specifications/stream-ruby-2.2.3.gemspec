# -*- encoding: utf-8 -*-
# stub: stream-ruby 2.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "stream-ruby"
  s.version = "2.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tommaso Barbugli"]
  s.date = "2015-03-16"
  s.description = "Ruby client for getstream.io service"
  s.email = "tbarbugli@gmail.com"
  s.extra_rdoc_files = ["README.md", "LICENSE"]
  s.files = ["LICENSE", "README.md"]
  s.homepage = "http://github.com/GetStream/stream-ruby"
  s.licenses = ["Apache-2.0"]
  s.rubygems_version = "2.4.8"
  s.summary = "A gem that provides a client interface for getstream.io"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, ["~> 0"])
      s.add_runtime_dependency(%q<http_signatures>, ["~> 0"])
      s.add_development_dependency(%q<rake>, ["~> 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.10"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.7"])
    else
      s.add_dependency(%q<httparty>, ["~> 0"])
      s.add_dependency(%q<http_signatures>, ["~> 0"])
      s.add_dependency(%q<rake>, ["~> 0"])
      s.add_dependency(%q<rspec>, ["~> 2.10"])
      s.add_dependency(%q<simplecov>, ["~> 0.7"])
    end
  else
    s.add_dependency(%q<httparty>, ["~> 0"])
    s.add_dependency(%q<http_signatures>, ["~> 0"])
    s.add_dependency(%q<rake>, ["~> 0"])
    s.add_dependency(%q<rspec>, ["~> 2.10"])
    s.add_dependency(%q<simplecov>, ["~> 0.7"])
  end
end
