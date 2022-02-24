# frozen_string_literal: true

require_relative "lib/mealie_cli/version"

Gem::Specification.new do |spec|
  spec.name = "mealie_cli"
  spec.version = MealieCli::VERSION
  spec.authors = ["ohzqq"]
  spec.email = ["iamchurkey@gmail.com"]

  spec.summary = "Write a short summary, because RubyGems requires one."
  spec.description = "Write a longer description or delete this line."
  spec.homepage = "https://github.com/ohzqq/mealie-cli"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://github.com/ohzqq/mealie-cli"

  spec.metadata["homepage_uri"] = "https://github.com/ohzqq/mealie-cli"
  spec.metadata["source_code_uri"] = "https://github.com/ohzqq/mealie-cli"
  spec.metadata["changelog_uri"] = "https://github.com/ohzqq/mealie-cli"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
