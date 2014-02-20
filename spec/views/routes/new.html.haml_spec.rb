# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "routes/new" do
  before(:each) do
    assign(:route, stub_model(Route,
      :start_location_id => 1,
      :end_location_id => 1,
      :paizhao => "MyString",
      :xinghao => "MyString",
      :driver_names => "MyString",
      :mobile => "MyString",
      :start_when => "MyString",
      :end_when => "MyString",
      :paths => "MyText"
    ).as_new_record)
  end

  it "renders new route form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", routes_path, "post" do
      assert_select "input#route_start_location_id[name=?]", "route[start_location_id]"
      assert_select "input#route_end_location_id[name=?]", "route[end_location_id]"
      assert_select "input#route_paizhao[name=?]", "route[paizhao]"
      assert_select "input#route_xinghao[name=?]", "route[xinghao]"
      assert_select "input#route_driver_names[name=?]", "route[driver_names]"
      assert_select "input#route_mobile[name=?]", "route[mobile]"
      assert_select "input#route_start_when[name=?]", "route[start_when]"
      assert_select "input#route_end_when[name=?]", "route[end_when]"
      assert_select "textarea#route_paths[name=?]", "route[paths]"
    end
  end
end
