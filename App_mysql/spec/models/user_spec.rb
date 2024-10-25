# spec/models/user_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(15) }
    it { should validate_presence_of(:password) }
    it { should validate_length_of(:password).is_equal_to(8) }
    it { should validate_presence_of(:email) }
    it { should allow_value("example@example.com").for(:email) }
    it { should_not allow_value("invalid").for(:email) }
  end
end
