# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "locations/index" do
  before(:each) do
    assign(:locations, [
      stub_model(Location,
        :name => "Name",
        :fuzeren => "Fuzeren",
        :fuzeren_mobile => "Fuzeren Mobile",
        :fuzeren_address => "Fuzeren Address"
      ),
      stub_model(Location,
        :name => "Name",
        :fuzeren => "Fuzeren",
        :fuzeren_mobile => "Fuzeren Mobile",
        :fuzeren_address => "Fuzeren Address"
      )
    ])
  end

  it "renders a list of locations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Fuzeren".to_s, :count => 2
    assert_select "tr>td", :text => "Fuzeren Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Fuzeren Address".to_s, :count => 2
  end
end
