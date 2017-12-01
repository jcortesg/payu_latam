# Version
require "payu_latam/version"

module PayuLatam
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :api_key, :api_login, :merchant_id, :account_id
    def config
      {:api_key => @api_key,
       :api_login => @api_login,
       :merchant_id => @merchant_id,
       :account_id => @account_id}
    end
  end
end
