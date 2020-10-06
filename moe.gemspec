require_relative 'lib/moe/version'

Gem::Specification.new do |spec|
  spec.name          = "moe"
  spec.version       = Moe::VERSION
  spec.authors       = ["Kyle OBrien"]
  spec.email         = ["kyle@kyleo.io"]

  spec.summary       = %q{Moe the Botender serves all the APIs}
  spec.description   = %q{}
  spec.homepage      = "https://orphic.enterprises/moe"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://orphic.enterprises'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/welcome-to-the-internet/moe"
  spec.metadata["changelog_uri"] = "https://github.com/welcome-to-the-internet/moe/changelog.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "thor", "~> 0.20"
end
