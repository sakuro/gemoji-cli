# frozen_string_literal: true

module Gemoji
  module CLI
    module Commands
      # Filter command
      class Filter < Dry::CLI::Command
        desc "Read standard input and convert emoji notations to corresponding Unicode sequences"

        def call(*, **)
          filter($stdin)
        end

        private def filter(io)
          io.each_line.map do |line|
            line.gsub!(/:([\w+-]+):/) do |match|
              emoji = Emoji.find_by_alias($1)
              emoji && !emoji.custom? ? emoji.raw : match
            end
            print line
          end
        end
      end
    end
  end
end
