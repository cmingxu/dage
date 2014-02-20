# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "balances/edit" do
  before(:each) do
    @balance = assign(:balance, stub_model(Balance,
      :amount => "9.99",
      :user_id => 1,
      :paizhao => "MyString",
      :location_id => "MyString",
      :reason => "MyString",
      :detail_reason => "MyString",
      :desc => "MyText"
    ))
  end

  it "renders the edit balance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", balance_path(@balance), "post" do
      assert_select "input#balance_amount[name=?]", "balance[amount]"
      assert_select "input#balance_user_id[name=?]", "balance[user_id]"
      assert_select "input#balance_paizhao[name=?]", "balance[paizhao]"
      assert_select "input#balance_location_id[name=?]", "balance[location_id]"
      assert_select "input#balance_reason[name=?]", "balance[reason]"
      assert_select "input#balance_detail_reason[name=?]", "balance[detail_reason]"
      assert_select "textarea#balance_desc[name=?]", "balance[desc]"
    end
  end
end
