require 'rails_helper'

RSpec.describe "microposts/new", type: :view do
  before(:each) do
    assign(:micropost, Micropost.new())
  end

  it "renders new micropost form" do
    render

    assert_select "form[action=?][method=?]", microposts_path, "post" do
    end
  end
end
