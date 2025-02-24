# frozen_string_literal: true

RSpec.describe Gemoji::CLI::Commands::Version, type: :command do
  let(:command_line) { "gemoji version" }

  it "prints the version number" do
    expect(result.stdout).to include("gemoji #{Gemoji::CLI::VERSION}")
  end
end
