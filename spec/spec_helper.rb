require 'simplecov'

SimpleCov.start

RSpec.configure do |config|

  config.include Warden::Test::ControllerHelpers, type: :controller
  config.after :each do
    Warden.test_reset!
  end
  def sign_in(user)
    warden.set_user(user)
  end



  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
