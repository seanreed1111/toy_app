require 'rails_helper'

RSpec.describe "microposts/index", type: :view do
  before(:each) do
    assign(:microposts, [
      Micropost.create!(),
      Micropost.create!()
    ])
  end

  it "renders a list of microposts" do
    render
  end
end
