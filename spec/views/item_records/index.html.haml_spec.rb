# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "item_records/index" do
  before(:each) do
    assign(:item_records, [
      stub_model(ItemRecord,
        :item_id => 1,
        :user_id => 2,
        :num => "Num",
        :usage_type => "Usage Type",
        :price => 3,
        :vehicle_id => "Vehicle",
        :reason => "MyText"
      ),
      stub_model(ItemRecord,
        :item_id => 1,
        :user_id => 2,
        :num => "Num",
        :usage_type => "Usage Type",
        :price => 3,
        :vehicle_id => "Vehicle",
        :reason => "MyText"
      )
    ])
  end

  it "renders a list of item_records" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Num".to_s, :count => 2
    assert_select "tr>td", :text => "Usage Type".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Vehicle".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
