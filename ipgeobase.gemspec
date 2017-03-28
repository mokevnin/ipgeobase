# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ipgeobase/version"

Gem::Specification.new do |s|
  s.name        = "ipgeobase"
  s.version     = Ipgeobase::VERSION
  s.authors     = ["Mokevnin Kirill"]
  s.email       = ["mokevnin@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{geo to ip}
  s.description = %q{geo to ip}

  s.rubyforge_project = "ipgeobase"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "nokogiri-happymapper"
  s.add_runtime_dependency "iconv"
end
