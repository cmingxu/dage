# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "huozhans/index" do
  before(:each) do
    assign(:huozhans, [
      stub_model(Huozhan,
        :huozhan_name => "Huozhan Name",
        :huozhan_address => "Huozhan Address",
        :huozhan_tel => "Huozhan Tel"
      ),
      stub_model(Huozhan,
        :huozhan_name => "Huozhan Name",
        :huozhan_address => "Huozhan Address",
        :huozhan_tel => "Huozhan Tel"
      )
    ])
  end

  it "renders a list of huozhans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Huozhan Name".to_s, :count => 2
    assert_select "tr>td", :text => "Huozhan Address".to_s, :count => 2
    assert_select "tr>td", :text => "Huozhan Tel".to_s, :count => 2
  end
end
