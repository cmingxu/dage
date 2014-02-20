# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "shippings/show" do
  before(:each) do
    @shipping = assign(:shipping, stub_model(Shipping,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sender Name/)
    rendered.should match(/Sender Tel/)
    rendered.should match(/Receiver Name/)
    rendered.should match(/Receiver Tel/)
    rendered.should match(/Receiver Address/)
    rendered.should match(/1/)
    rendered.should match(/Huowu Name/)
    rendered.should match(/Huowu Danwei/)
    rendered.should match(/Huowu Amount/)
    rendered.should match(/Huowu Beizhu/)
    rendered.should match(/Status/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Baozhi Needed/)
    rendered.should match(/4/)
  end
end
