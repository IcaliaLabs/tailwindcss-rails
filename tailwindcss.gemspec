
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tailwindcss/version"

Gem::Specification.new do |spec|
  spec.name          = "tailwindcss"
  spec.version       = Tailwindcss::VERSION
  spec.authors       = ["Abraham Kuri"]
  spec.email         = ["kurenn@icalialabs.com"]

  spec.summary       = %q{ Tailwind CSS Rails Integration + Webpacker }
  spec.description = %q{ Tailwind CSS Rails Integration + Webpacker }
  spec.homepage      = "https://github.com/IcaliaLabs/tailwindcss-rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.require_paths = ["lib"]
  spec.files         = `git ls-files -z`.split("\x0")

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency("railties", ">= 4.1.0", "< 6.0")
end
