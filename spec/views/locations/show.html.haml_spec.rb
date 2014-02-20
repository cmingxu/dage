# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "locations/show" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :name => "Name",
      :fuzeren => "Fuzeren",
      :fuzeren_mobile => "Fuzeren Mobile",
      :fuzeren_address => "Fuzeren Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Fuzeren/)
    rendered.should match(/Fuzeren Mobile/)
    rendered.should match(/Fuzeren Address/)
  end
end
