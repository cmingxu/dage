require 'spec_helper'

describe "chukus/show" do
  before(:each) do
    @chuku = assign(:chuku, stub_model(Chuku,
      :user_id => 1,
      :quantity => "Quantity",
      :price => "Price",
      :hetong_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Quantity/)
    rendered.should match(/Price/)
    rendered.should match(/2/)
  end
end
