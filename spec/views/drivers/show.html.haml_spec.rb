# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "drivers/show" do
  before(:each) do
    @driver = assign(:driver, stub_model(Driver,
      :name => "Name",
      :age => 1,
      :phone => "Phone",
      :address => "Address",
      :salary => "Salary",
      :start_date => "Start Date",
      :end_date => "End Date",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Phone/)
    rendered.should match(/Address/)
    rendered.should match(/Salary/)
    rendered.should match(/Start Date/)
    rendered.should match(/End Date/)
    rendered.should match(/MyText/)
  end
end
