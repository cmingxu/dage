# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "shippings/edit" do
  before(:each) do
    @shipping = assign(:shipping, stub_model(Shipping,
      :sender_name => "MyString",
      :sender_tel => "MyString",
      :receiver_name => "MyString",
      :receiver_tel => "MyString",
      :receiver_address => "MyString",
      :fee => 1,
      :huowu_name => "MyString",
      :huowu_danwei => "MyString",
      :huowu_amount => "MyString",
      :huowu_beizhu => "MyString",
      :status => "MyString",
      :is_paid => false,
      :is_daishouhuokuan => false,
      :huowu_cost => 1,
      :huowu_baozhi => 1,
      :baozhi_needed => "MyString",
      :daishouhuokuan_fee => 1
    ))
  end

  it "renders the edit shipping form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shipping_path(@shipping), "post" do
      assert_select "input#shipping_sender_name[name=?]", "shipping[sender_name]"
      assert_select "input#shipping_sender_tel[name=?]", "shipping[sender_tel]"
      assert_select "input#shipping_receiver_name[name=?]", "shipping[receiver_name]"
      assert_select "input#shipping_receiver_tel[name=?]", "shipping[receiver_tel]"
      assert_select "input#shipping_receiver_address[name=?]", "shipping[receiver_address]"
      assert_select "input#shipping_fee[name=?]", "shipping[fee]"
      assert_select "input#shipping_huowu_name[name=?]", "shipping[huowu_name]"
      assert_select "input#shipping_huowu_danwei[name=?]", "shipping[huowu_danwei]"
      assert_select "input#shipping_huowu_amount[name=?]", "shipping[huowu_amount]"
      assert_select "input#shipping_huowu_beizhu[name=?]", "shipping[huowu_beizhu]"
      assert_select "input#shipping_status[name=?]", "shipping[status]"
      assert_select "input#shipping_is_paid[name=?]", "shipping[is_paid]"
      assert_select "input#shipping_is_daishouhuokuan[name=?]", "shipping[is_daishouhuokuan]"
      assert_select "input#shipping_huowu_cost[name=?]", "shipping[huowu_cost]"
      assert_select "input#shipping_huowu_baozhi[name=?]", "shipping[huowu_baozhi]"
      assert_select "input#shipping_baozhi_needed[name=?]", "shipping[baozhi_needed]"
      assert_select "input#shipping_daishouhuokuan_fee[name=?]", "shipping[daishouhuokuan_fee]"
    end
  end
end
