require 'rails_helper'

RSpec.describe User, type: :model do
  
  before :each do
    @newUser = User.new(name: "Sean", email: "sean@sean.com")
  end

    it "validates the presence of email" do
      @newUser.email = nil
      @newUser.valid?
      expect(@newUser.errors[:email]).to include("can't be blank")
    end

    it "validates presence of name" do
      @newUser.name = nil
      @newUser.valid?
      expect(@newUser.errors[:name]).to include("can't be blank")
    end
end
