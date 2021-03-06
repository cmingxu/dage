# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "rukus/index" do
  before(:each) do
    assign(:rukus, [
      stub_model(Ruku,
        :user_id => 1,
        :quantity => 2,
        :name => "Name",
        :xinghao => "Xinghao",
        :item_id => 3
      ),
      stub_model(Ruku,
        :user_id => 1,
        :quantity => 2,
        :name => "Name",
        :xinghao => "Xinghao",
        :item_id => 3
      )
    ])
  end

  it "renders a list of rukus" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Xinghao".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
