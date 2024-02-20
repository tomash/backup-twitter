# frozen_string_literal: true

require_relative "lib/backup/twitter/version"

Gem::Specification.new do |spec|
  spec.name = "backup-twitter"
  spec.version = Backup::Twitter::VERSION
  spec.authors = ["Tomasz Stachewicz"]
  spec.email = ["t.stachewicz@gmail.com"]

  spec.summary = "Backup gem integration with Twitter for notifications."
  # spec.description = "TODO: Write a longer description or delete this line."
  spec.homepage = "https://github.com/tomash/backup-twitter"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tomash/backup-twitter"
  spec.metadata["changelog_uri"] = "https://github.com/tomash/backup-twitter/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'backup', '5.0.0.beta.3'
  spec.add_dependency "twitter", "~> 6.0"
end
