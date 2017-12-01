require 'rspec'
require 'payu_latam'
require 'vcr'
require 'webmock/rspec'

TEST_API_KEY = "TPTESTCF24A7D8095EDF88E3EFD6103C"

VCR.configure do |c|
  c.cassette_library_dir = "spec/fixtures"
  c.hook_into :webmock
  c.default_cassette_options = { :record => :once }
end
