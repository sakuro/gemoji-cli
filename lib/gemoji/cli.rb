# frozen_string_literal: true

require "dry/cli"
require_relative "cli/commands/filter"
require_relative "cli/commands/list"
require_relative "cli/commands/version"
require_relative "cli/version"

module Gemoji
  module CLI
    # The command registry for the CLI
    module Commands
      extend Dry::CLI::Registry

      register "filter", Gemoji::CLI::Commands::Filter
      register "list", Gemoji::CLI::Commands::List, aliases: ["ls"]
      register "version", Gemoji::CLI::Commands::Version, aliases: ["v", "-v", "--version"]
    end
  end
end
