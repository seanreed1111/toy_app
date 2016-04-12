require 'rails_helper'

RSpec.describe Micropost, type: :model do
  before :each do
    @user = User.create(name: "Sean", email:"sean@sean.com")
    
    @user.microposts << Micropost.new(content: "fake content")
  end

  it "validates presence of content" do
    @firstPost = @user.microposts.first
    @firstPost.content = nil
    @firstPost.valid?
    expect(@firstPost.errors[:content]).to include "can't be blank"
  end
  it "belongs to a user" do
    @firstPost = @user.microposts.first
    @firstPost.user_id = nil
    @firstPost.valid?
    expect(@firstPost.errors[:user_id]).to include "can't be blank"

  end
end
