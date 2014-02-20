# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "balances/index" do
  before(:each) do
    assign(:balances, [
      stub_model(Balance,
        :amount => "9.99",
        :user_id => 1,
        :paizhao => "Paizhao",
        :location_id => "Location",
        :reason => "Reason",
        :detail_reason => "Detail Reason",
        :desc => "MyText"
      ),
      stub_model(Balance,
        :amount => "9.99",
        :user_id => 1,
        :paizhao => "Paizhao",
        :location_id => "Location",
        :reason => "Reason",
        :detail_reason => "Detail Reason",
        :desc => "MyText"
      )
    ])
  end

  it "renders a list of balances" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Paizhao".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Reason".to_s, :count => 2
    assert_select "tr>td", :text => "Detail Reason".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
