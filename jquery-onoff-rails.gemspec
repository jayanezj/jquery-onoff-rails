# -*- encoding: utf-8 -*-
require File.expand_path('../lib/onoff/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "jquery-onoff-rails"
  spec.authors       = ["José Antonio Yáñez Jiménez"]
  spec.email         = ["jose@jimenezfrontent.es"]
  spec.licenses      = ["CC-BY 4.0"]
  spec.description   = %q{Rails wrapper for the jQuery OnOff plugin}
  spec.summary       = %q{Rails assets pipeline compatible version of the jQuery OnOff plugin}
  spec.homepage      = "https://github.com/berikin/jquery-onoff-rails"

  spec.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = Dir["test/**/*"]
  spec.require_paths = ["lib"]
  spec.version       = Onoff::VERSION
  spec.add_dependency "railties", ">= 3.2", "< 5.0"

  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "sass-rails"
end
