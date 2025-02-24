# frozen_string_literal: true

RSpec.describe Gemoji::CLI::Commands::Filter, type: :command do
  let(:command_line) { "gemoji filter" }

  context "with known emoji notations" do
    let(:input) { ":smile: :cry:" }

    it "converts emoji notation in the input" do
      expect(result.stdout).to include("\u{1F604} \u{1F622}")
    end
  end

  context "with unknown emoji notations" do
    let(:input) { ":unknown:" }

    it "leaves unknown notation as is" do
      expect(result.stdout).to include(":unknown:")
    end
  end
end
