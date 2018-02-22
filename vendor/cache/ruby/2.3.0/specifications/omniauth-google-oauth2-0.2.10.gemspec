# -*- encoding: utf-8 -*-
# stub: omniauth-google-oauth2 0.2.10 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-google-oauth2".freeze
  s.version = "0.2.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Josh Ellithorpe".freeze, "Yury Korolev".freeze]
  s.date = "2015-11-05"
  s.description = "A Google OAuth2 strategy for OmniAuth 1.x".freeze
  s.email = ["quest@mac.com".freeze]
  s.homepage = "https://github.com/zquestz/omniauth-google-oauth2".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.2".freeze
  s.summary = "A Google OAuth2 strategy for OmniAuth 1.x".freeze

  s.installed_by_version = "2.6.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<omniauth>.freeze, [">= 1.1.1"])
      s.add_runtime_dependency(%q<omniauth-oauth2>.freeze, ["~> 1.3.1"])
      s.add_runtime_dependency(%q<jwt>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<multi_json>.freeze, ["~> 1.3"])
      s.add_runtime_dependency(%q<addressable>.freeze, ["~> 2.3"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 2.14.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<omniauth>.freeze, [">= 1.1.1"])
      s.add_dependency(%q<omniauth-oauth2>.freeze, ["~> 1.3.1"])
      s.add_dependency(%q<jwt>.freeze, ["~> 1.0"])
      s.add_dependency(%q<multi_json>.freeze, ["~> 1.3"])
      s.add_dependency(%q<addressable>.freeze, ["~> 2.3"])
      s.add_dependency(%q<rspec>.freeze, [">= 2.14.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<omniauth>.freeze, [">= 1.1.1"])
    s.add_dependency(%q<omniauth-oauth2>.freeze, ["~> 1.3.1"])
    s.add_dependency(%q<jwt>.freeze, ["~> 1.0"])
    s.add_dependency(%q<multi_json>.freeze, ["~> 1.3"])
    s.add_dependency(%q<addressable>.freeze, ["~> 2.3"])
    s.add_dependency(%q<rspec>.freeze, [">= 2.14.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
