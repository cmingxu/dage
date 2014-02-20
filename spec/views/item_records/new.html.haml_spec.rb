# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "item_records/new" do
  before(:each) do
    assign(:item_record, stub_model(ItemRecord,
      :item_id => 1,
      :user_id => 1,
      :num => "MyString",
      :usage_type => "MyString",
      :price => 1,
      :vehicle_id => "MyString",
      :reason => "MyText"
    ).as_new_record)
  end

  it "renders new item_record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", item_records_path, "post" do
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
