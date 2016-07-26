# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubynovice/version'

Gem::Specification.new do |spec|
  spec.name          = "rubynovice"
  spec.version       = Rubynovice::VERSION
  spec.authors       = ["Shigeto R. Nishitani"]
  spec.email         = ["shigeto_nishitani@me.com"]

  spec.summary       = %q{Ruby programming mastering platform using Github.}
  spec.description   = %q{Ruby programming mastering platform using Github.}
  spec.homepage      = "https://github.com/daddygongon/rubynovice"
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

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "yard", "~> 0.8"
  spec.add_development_dependency "hiki2md"
  spec.add_development_dependency "hiki2yard"
end
