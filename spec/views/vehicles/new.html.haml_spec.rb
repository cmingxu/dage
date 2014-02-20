# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "vehicles/new" do
  before(:each) do
    assign(:vehicle, stub_model(Vehicle,
      :paizhao => "MyString",
      :xinghao => "MyString",
      :leixing => "MyString"
    ).as_new_record)
  end

  it "renders new vehicle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vehicles_path, "post" do
      assert_select "input#vehicle_paizhao[name=?]", "vehicle[paizhao]"
      assert_select "input#vehicle_xinghao[name=?]", "vehicle[xinghao]"
      assert_select "input#vehicle_leixing[name=?]", "vehicle[leixing]"
    end
  end
end
