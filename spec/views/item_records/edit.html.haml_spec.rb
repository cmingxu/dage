# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "item_records/edit" do
  before(:each) do
    @item_record = assign(:item_record, stub_model(ItemRecord,
      :item_id => 1,
      :user_id => 1,
      :num => "MyString",
      :usage_type => "MyString",
      :price => 1,
      :vehicle_id => "MyString",
      :reason => "MyText"
    ))
  end

  it "renders the edit item_record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", item_record_path(@item_record), "post" do
      assert_select "input#item_record_item_id[name=?]", "item_record[item_id]"
      assert_select "input#item_record_user_id[name=?]", "item_record[user_id]"
      assert_select "input#item_record_num[name=?]", "item_record[num]"
      assert_select "input#item_record_usage_type[name=?]", "item_record[usage_type]"
      assert_select "input#item_record_price[name=?]", "item_record[price]"
      assert_select "input#item_record_vehicle_id[name=?]", "item_record[vehicle_id]"
      assert_select "textarea#item_record_reason[name=?]", "item_record[reason]"
    end
  end
end
