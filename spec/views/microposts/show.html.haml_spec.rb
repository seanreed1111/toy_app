require 'rails_helper'

RSpec.describe "microposts/show", type: :view do
  before(:each) do
    @micropost = assign(:micropost, Micropost.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
