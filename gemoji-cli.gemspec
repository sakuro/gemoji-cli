# frozen_string_literal: true

require_relative "lib/gemoji/cli/version"

Gem::Specification.new do |spec|
  spec.name = "gemoji-cli"
  spec.version = Gemoji::CLI::VERSION
  spec.authors = ["OZAWA Sakuro"]
  spec.email = ["10973+sakuro@users.noreply.github.com"]

  spec.summary = "GitHub emoji converter and lister"
  spec.description = <<~DESC
    A command-line tool that:
    - Converts GitHub emoji codes to Unicode.
    - Lists supported emojis in Markdown or CSV format.
  DESC

  spec.homepage = "https://github.com/sakuro/gemoji-cli"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2.8"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "#{spec.homepage}.git"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) {|ls|
    ls.each_line("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) {|f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "csv", ">= 3.3.2"
  spec.add_dependency "dry-cli", ">= 1.2.0"
  spec.add_dependency "gemoji", ">= 4.1.0"
end
