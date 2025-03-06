# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)
Dir["lib/tasks/*.rake"].each {|file| load file }

task default: %i[spec rubocop]
