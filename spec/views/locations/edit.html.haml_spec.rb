# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "locations/edit" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :name => "MyString",
      :fuzeren => "MyString",
      :fuzeren_mobile => "MyString",
      :fuzeren_address => "MyString"
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", location_path(@location), "post" do
      assert_select "input#location_name[name=?]", "location[name]"
      assert_select "input#location_fuzeren[name=?]", "location[fuzeren]"
      assert_select "input#location_fuzeren_mobile[name=?]", "location[fuzeren_mobile]"
      assert_select "input#location_fuzeren_address[name=?]", "location[fuzeren_address]"
    end
  end
end
