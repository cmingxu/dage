# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "drivers/index" do
  before(:each) do
    assign(:drivers, [
      stub_model(Driver,
        :name => "Name",
        :age => 1,
        :phone => "Phone",
        :address => "Address",
        :salary => "Salary",
        :start_date => "Start Date",
        :end_date => "End Date",
        :description => "MyText"
      ),
      stub_model(Driver,
        :name => "Name",
        :age => 1,
        :phone => "Phone",
        :address => "Address",
        :salary => "Salary",
        :start_date => "Start Date",
        :end_date => "End Date",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of drivers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Salary".to_s, :count => 2
    assert_select "tr>td", :text => "Start Date".to_s, :count => 2
    assert_select "tr>td", :text => "End Date".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
