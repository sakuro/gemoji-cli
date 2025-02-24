# frozen_string_literal: true

RSpec.describe Gemoji::CLI::Commands::List, type: :command do
  let(:lines) { result.stdout.lines }

  context "without --format" do
    let(:command_line) { "gemoji list" }
    let(:head) { lines.take(2) }
    let(:body) { lines.drop(2) }

    it "prints the list of emoji in markdown format" do
      aggregate_failures do
        expect(head).to eq(["| Name | Raw |\n", "|------|-----|\n"])
        expect(body).to all(match(/^\| :\S+: \| \S+ \|$/))
      end
    end
  end

  context "with --format markdown" do
    let(:command_line) { "gemoji list --format markdown" }
    let(:head) { lines.take(2) }
    let(:body) { lines.drop(2) }

    it "prints the list of emoji in markdown format" do
      aggregate_failures do
        expect(head).to eq(["| Name | Raw |\n", "|------|-----|\n"])
        expect(body).to all(match(/^\| :\S+: \| \S+ \|$/))
      end
    end
  end

  context "with --format csv" do
    let(:command_line) { "gemoji list --format csv" }
    let(:head) { lines.take(1) }
    let(:body) { lines.drop(1) }

    it "prints the list of emoji in markdown format" do
      aggregate_failures do
        expect(head).to eq(["Name,Raw\n"])
        expect(body).to all(match(/^:\S+:,\S+$/))
      end
    end
  end

  context "with --format unknown" do
    let(:command_line) { "gemoji list --format unknown" }

    it "exits with a failure status" do
      expect(result).to be_failure
    end

    it "outputs nothing to stdout" do
      expect(result.stdout).to be_empty
    end

    it "prints an error message" do
      expect(result.stderr).to include('"gemoji list" was called with arguments "--format unknown"')
    end
  end
end
