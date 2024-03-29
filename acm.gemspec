# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acm/version'

Gem::Specification.new do |spec|
  spec.name          = "acm"
  spec.version       = Acm::VERSION
  spec.authors       = ["takatoh"]
  spec.email         = ["takatoh.m@gmail.com"]

  spec.summary       = %q{A simple account manager (NOT SECURE ;p).}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/takatoh/acm"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
#  if spec.respond_to?(:metadata)
#    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
#  else
#    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
#  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.4.10"
  spec.add_development_dependency "rake", ">= 13.0"
  spec.add_runtime_dependency "thor"
  spec.add_runtime_dependency "clipboard"
  spec.add_runtime_dependency "ffi"
end
