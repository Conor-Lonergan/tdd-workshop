# frozen_string_literal: true

require File.expand_path('../lib/services', __dir__)

RSpec.configure do |config|
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  config.alias_example_group_to :pdescribe, pry: true
  config.alias_example_to :pit, pry: true

  config.before(:example, pry: true) do |_example|
    require 'pry-byebug'
    binding.pry
  end
end
