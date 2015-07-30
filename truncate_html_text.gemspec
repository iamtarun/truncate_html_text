# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'truncate_html_text/version'

Gem::Specification.new do |spec|
  spec.name          = "truncate_html_text"
  spec.version       = TruncateHtmlText::VERSION
  spec.authors       = ["Tarun Agrawal"]
  spec.email         = ["tarun7588@gmail.com"]
  spec.summary       = %q{Rails HTML Text Truncate}
  spec.description   = %q{This is a Rails gem for Truncate Html Text}
  spec.homepage      = "https://github.com/iamtarun/truncate_html_text"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  #spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", '>= 1.0'
  spec.add_development_dependency "rake", "~> 10.0"
end
