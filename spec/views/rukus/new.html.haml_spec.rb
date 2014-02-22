# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "rukus/new" do
  before(:each) do
    assign(:ruku, stub_model(Ruku,
      :user_id => 1,
      :quantity => 1,
      :name => "MyString",
      :xinghao => "MyString",
      :item_id => 1
    ).as_new_record)
  end

  it "renders new ruku form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rukus_path, "post" do
      assert_select "input#ruku_user_id[name=?]", "ruku[user_id]"
      assert_select "input#ruku_quantity[name=?]", "ruku[quantity]"
      assert_select "input#ruku_name[name=?]", "ruku[name]"
      assert_select "input#ruku_xinghao[name=?]", "ruku[xinghao]"
      assert_select "input#ruku_item_id[name=?]", "ruku[item_id]"
    end
  end
end
