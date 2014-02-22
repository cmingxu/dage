# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "items/index" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :name => "Name",
        :xinghao => "Xinghao",
        :danjia => 1.5,
        :tuzhi => "Tuzhi",
        :danwei => "Danwei",
        :quantity => 1,
        :user_id => 2
      ),
      stub_model(Item,
        :name => "Name",
        :xinghao => "Xinghao",
        :danjia => 1.5,
        :tuzhi => "Tuzhi",
        :danwei => "Danwei",
        :quantity => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Xinghao".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Tuzhi".to_s, :count => 2
    assert_select "tr>td", :text => "Danwei".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
