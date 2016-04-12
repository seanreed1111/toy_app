require 'rails_helper'

RSpec.describe "microposts/edit", type: :view do
  before(:each) do
    @micropost = assign(:micropost, Micropost.create!())
  end

  it "renders the edit micropost form" do
    render

    assert_select "form[action=?][method=?]", micropost_path(@micropost), "post" do
    end
  end
end
