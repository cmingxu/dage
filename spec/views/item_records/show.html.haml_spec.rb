# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "item_records/show" do
  before(:each) do
    @item_record = assign(:item_record, stub_model(ItemRecord,
      :item_id => 1,
      :user_id => 2,
      :num => "Num",
      :usage_type => "Usage Type",
      :price => 3,
      :vehicle_id => "Vehicle",
      :reason => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Num/)
    rendered.should match(/Usage Type/)
    rendered.should match(/3/)
    rendered.should match(/Vehicle/)
    rendered.should match(/MyText/)
  end
end
