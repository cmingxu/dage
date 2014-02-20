# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "balances/show" do
  before(:each) do
    @balance = assign(:balance, stub_model(Balance,
      :amount => "9.99",
      :user_id => 1,
      :paizhao => "Paizhao",
      :location_id => "Location",
      :reason => "Reason",
      :detail_reason => "Detail Reason",
      :desc => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    rendered.should match(/1/)
    rendered.should match(/Paizhao/)
    rendered.should match(/Location/)
    rendered.should match(/Reason/)
    rendered.should match(/Detail Reason/)
    rendered.should match(/MyText/)
  end
end
