# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "vehicles/edit" do
  before(:each) do
    @vehicle = assign(:vehicle, stub_model(Vehicle,
      :paizhao => "MyString",
      :xinghao => "MyString",
      :leixing => "MyString"
    ))
  end

  it "renders the edit vehicle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vehicle_path(@vehicle), "post" do
      assert_select "input#vehicle_paizhao[name=?]", "vehicle[paizhao]"
      assert_select "input#vehicle_xinghao[name=?]", "vehicle[xinghao]"
      assert_select "input#vehicle_leixing[name=?]", "vehicle[leixing]"
    end
  end
end
