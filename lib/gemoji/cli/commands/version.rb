# frozen_string_literal: true

module Gemoji
  module CLI
    module Commands
      # Version command
      class Version < Dry::CLI::Command
        desc "Print the version"

        def call(*, **)
          puts "#{File.basename($PROGRAM_NAME)} #{Gemoji::CLI::VERSION}"
        end
      end
    end
  end
end
