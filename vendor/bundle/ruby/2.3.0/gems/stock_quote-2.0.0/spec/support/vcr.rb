# encoding: UTF-8
require 'vcr'
VCR.configure do |c|
  c.cassette_library_dir = 'spec/support/vcr_cassettes'
  c.hook_into :webmock
  c.ignore_localhost = true
  c.default_cassette_options = { record: :new_episodes }
  c.configure_rspec_metadata!
end
