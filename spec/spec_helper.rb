require 'rspec'
require 'payu_latam'
require 'vcr'
require 'webmock/rspec'

VCR.configure do |c|
  c.cassette_library_dir = "spec/fixtures"
  c.hook_into :webmock
end
