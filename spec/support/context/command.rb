# frozen_string_literal: true

require "tty-command"

shared_context "with command result", type: :command do
  let(:command) { TTY::Command.new(printer: :null) }
  let(:input) { nil }
  let(:result) {
    options = {}
    options[:input] = input if input
    command.run!(command_line, **options)
  }
end

RSpec.configure do |config|
  config.include_context "with command result", type: :command
end
