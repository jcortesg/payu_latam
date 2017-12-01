require 'spec_helper'
RSpec.describe 'PayuLatam' do
  describe '.Configuration' do
    it 'should be able to set configuration keys' do
      PayuLatam.configure do |config|
        config.api_key = 'example_key'
        config.merchant_id = '12345678'
        config.account_id = 'account123'
      end
    end
  end
end
