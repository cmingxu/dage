# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "chukus/index" do
  before(:each) do
    assign(:chukus, [
      stub_model(Chuku,
        :user_id => 1,
        :quantity => "Quantity",
        :price => "Price",
        :hetong_id => 2
      ),
      stub_model(Chuku,
        :user_id => 1,
        :quantity => "Quantity",
        :price => "Price",
        :hetong_id => 2
      )
    ])
  end

  it "renders a list of chukus" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Quantity".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
