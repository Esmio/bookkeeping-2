require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has email' do
    user = User.new email: 'simon@1.com'
    expect(user.email).to eq 'simon@1.com'  
  end
end
