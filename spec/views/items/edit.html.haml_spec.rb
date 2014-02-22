# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :name => "MyString",
      :xinghao => "MyString",
      :danjia => 1.5,
      :tuzhi => "MyString",
      :danwei => "MyString",
      :quantity => 1,
      :user_id => 1
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", item_path(@item), "post" do
      assert_select "input#item_name[name=?]", "item[name]"
      assert_select "input#item_xinghao[name=?]", "item[xinghao]"
      assert_select "input#item_danjia[name=?]", "item[danjia]"
      assert_select "input#item_tuzhi[name=?]", "item[tuzhi]"
      assert_select "input#item_danwei[name=?]", "item[danwei]"
      assert_select "input#item_quantity[name=?]", "item[quantity]"
      assert_select "input#item_user_id[name=?]", "item[user_id]"
    end
  end
end
