# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "shippings/index" do
  before(:each) do
    assign(:shippings, [
      stub_model(Shipping,
        :sender_name => "Sender Name",
        :sender_tel => "Sender Tel",
        :receiver_name => "Receiver Name",
        :receiver_tel => "Receiver Tel",
        :receiver_address => "Receiver Address",
        :fee => 1,
        :huowu_name => "Huowu Name",
        :huowu_danwei => "Huowu Danwei",
        :huowu_amount => "Huowu Amount",
        :huowu_beizhu => "Huowu Beizhu",
        :status => "Status",
        :is_paid => false,
        :is_daishouhuokuan => false,
        :huowu_cost => 2,
        :huowu_baozhi => 3,
        :baozhi_needed => "Baozhi Needed",
        :daishouhuokuan_fee => 4
      ),
      stub_model(Shipping,
        :sender_name => "Sender Name",
        :sender_tel => "Sender Tel",
        :receiver_name => "Receiver Name",
        :receiver_tel => "Receiver Tel",
        :receiver_address => "Receiver Address",
        :fee => 1,
        :huowu_name => "Huowu Name",
        :huowu_danwei => "Huowu Danwei",
        :huowu_amount => "Huowu Amount",
        :huowu_beizhu => "Huowu Beizhu",
        :status => "Status",
        :is_paid => false,
        :is_daishouhuokuan => false,
        :huowu_cost => 2,
        :huowu_baozhi => 3,
        :baozhi_needed => "Baozhi Needed",
        :daishouhuokuan_fee => 4
      )
    ])
  end

  it "renders a list of shippings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sender Name".to_s, :count => 2
    assert_select "tr>td", :text => "Sender Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Receiver Name".to_s, :count => 2
    assert_select "tr>td", :text => "Receiver Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Receiver Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Huowu Name".to_s, :count => 2
    assert_select "tr>td", :text => "Huowu Danwei".to_s, :count => 2
    assert_select "tr>td", :text => "Huowu Amount".to_s, :count => 2
    assert_select "tr>td", :text => "Huowu Beizhu".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Baozhi Needed".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
