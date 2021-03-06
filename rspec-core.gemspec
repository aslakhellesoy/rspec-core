# -*- encoding: utf-8 -*-
require "rspec/core/version"
require "rspec/mocks/version"
require "rspec/expectations/version"

Gem::Specification.new do |s|
  s.name        = "rspec-core"
  s.version     = RSpec::Core::Version::STRING
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Chad Humphries", "David Chelimsky"]
  s.email       = "dchelimsky@gmail.com;chad.humphries@gmail.com"
  s.homepage    = "http://github.com/rspec/rspec-core"
  s.summary     = "rspec-core-#{RSpec::Core::Version::STRING}"
  s.description = "RSpec runner and example groups"

  s.rubygems_version   = "1.3.7"
  s.rubyforge_project  = "rspec"
  s.default_executable = "rspec"

  s.files            = `git ls-files`.split("\n")
  s.test_files       = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables      = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.extra_rdoc_files = [ "README.markdown" ]
  s.rdoc_options     = ["--charset=UTF-8"]
  s.require_path     = "lib"

  s.post_install_message = %Q{**************************************************

  Thank you for installing #{s.summary}

  Please be sure to look at Upgrade.markdown to see what might have changed
  since the last release.

**************************************************
}

  s.add_development_dependency "rspec-expectations", ">= #{RSpec::Expectations::Version::STRING}"
  s.add_development_dependency "rspec-mocks",        ">= #{RSpec::Mocks::Version::STRING}"
  s.add_development_dependency "rake",               ">= 0.8.7"
  s.add_development_dependency "cucumber",           ">= 0.9.1"
  s.add_development_dependency "aruba",              ">= 0.2.3"
  s.add_development_dependency "autotest",           ">= 4.4.1"
  s.add_development_dependency "syntax",             ">= 1.0.0"
  s.add_development_dependency "flexmock",           ">= 0.8.7"
  s.add_development_dependency "mocha",              ">= 0.9.8"
  s.add_development_dependency "rr",                 ">= 1.0.0"
  s.add_development_dependency "nokogiri",           ">= 1.4.3"
  s.add_development_dependency "watchr",             ">= 0.7"
end

