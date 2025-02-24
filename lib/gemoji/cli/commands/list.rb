# frozen_string_literal: true

require "csv"
require "gemoji"

module Gemoji
  module CLI
    module Commands
      # List command
      class List < Dry::CLI::Command
        desc "List all recognized emoji"

        option :format, default: "markdown", values: %w[markdown csv], desc: "Output format"

        HEADINGS = %w[Name Raw].freeze
        private_constant :HEADINGS

        def call(**options)
          case options[:format] # rubocop:disable Style/MissingElse
          when "markdown"
            list_markdown
          when "csv"
            list_csv
          end
        end

        private def list_markdown
          puts "| #{HEADINGS.join(" | ")} |"
          puts "|------|-----|"
          Emoji.all.each do |emoji|
            puts "| :#{emoji.name}: | #{emoji.raw} |"
          end
        end

        private def list_csv
          csv = CSV.generate {|out|
            out << HEADINGS
            Emoji.all.each do |emoji|
              out << [":#{emoji.name}:", emoji.raw]
            end
          }
          puts csv
        end
      end
    end
  end
end
