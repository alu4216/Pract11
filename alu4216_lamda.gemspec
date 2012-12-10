# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "alu4216_lamda/version"

Gem::Specification.new do |s|
  s.name        = "alu4216_lamda"
  s.version     = Alu4216Lamda::VERSION
  s.authors     = ["josue"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = %q{Gema de motor de expresiones }
  s.description = %q{Motor de expresiones regulares}

  s.rubyforge_project = "alu4216_lamda"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
