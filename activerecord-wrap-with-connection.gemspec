# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "activerecord-wrap-with-connection/version"

Gem::Specification.new do |s|
  s.name        = "activerecord-wrap-with-connection"
  s.version     = ActiverecordWrapWithConnection::VERSION
  s.authors     = ["Ben Langfeld"]
  s.email       = ["ben@langfeld.me"]
  s.homepage    = "https://github.com/adhearsion/activerecord-wrap-with-connection"
  s.summary     = %q{Using ActiveRecord in long running threads is painful. Here's a nice solution.}
  s.description = %q{Monkey-patches ActiveRecord to wrap all methods which use a database connection with #with_connection}

  s.rubyforge_project = "activerecord-wrap-with-connection"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency %q<activesupport>, [">= 3.0.10"]

  s.add_development_dependency %q<bundler>, ["~> 1.0.0"]
  s.add_development_dependency %q<rspec>, [">= 2.5.0"]
  s.add_development_dependency %q<ci_reporter>, [">= 1.6.3"]
  s.add_development_dependency %q<simplecov>, [">= 0"]
  s.add_development_dependency %q<simplecov-rcov>, [">= 0"]
  s.add_development_dependency %q<yard>, ["~> 0.6.0"]
  s.add_development_dependency %q<rake>, [">= 0"]
  s.add_development_dependency %q<mocha>, [">= 0"]
  s.add_development_dependency %q<guard-rspec>
end
