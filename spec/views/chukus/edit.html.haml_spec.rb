# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "chukus/edit" do
  before(:each) do
    @chuku = assign(:chuku, stub_model(Chuku,
      :user_id => 1,
      :quantity => "MyString",
      :price => "MyString",
      :hetong_id => 1
    ))
  end

  it "renders the edit chuku form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chuku_path(@chuku), "post" do
      assert_select "input#chuku_user_id[name=?]", "chuku[user_id]"
      assert_select "input#chuku_quantity[name=?]", "chuku[quantity]"
      assert_select "input#chuku_price[name=?]", "chuku[price]"
      assert_select "input#chuku_hetong_id[name=?]", "chuku[hetong_id]"
    end
  end
end
