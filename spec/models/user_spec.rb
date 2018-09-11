require 'rails_helper'

# setup the helpers
include Warden::Test::Helpers

# When you add an on_next_request block. It's executed when the request hits warden.  Once it's hit, it is consumed and does not affect further requests
# This example logs in a user
Warden.on_next_request do |proxy|
  proxy.set_user("Some User", :scope => :user)
end


# RSpec.describe User, type: :model do
#     user = FactoryBot.create(:user)
#     user.confirmed_at = Time.now
#     user.save
#   end
