# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "routes/index" do
  before(:each) do
    assign(:routes, [
      stub_model(Route,
        :start_location_id => 1,
        :end_location_id => 2,
        :paizhao => "Paizhao",
        :xinghao => "Xinghao",
        :driver_names => "Driver Names",
        :mobile => "Mobile",
        :start_when => "Start When",
        :end_when => "End When",
        :paths => "MyText"
      ),
      stub_model(Route,
        :start_location_id => 1,
        :end_location_id => 2,
        :paizhao => "Paizhao",
        :xinghao => "Xinghao",
        :driver_names => "Driver Names",
        :mobile => "Mobile",
        :start_when => "Start When",
        :end_when => "End When",
        :paths => "MyText"
      )
    ])
  end

  it "renders a list of routes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Paizhao".to_s, :count => 2
    assert_select "tr>td", :text => "Xinghao".to_s, :count => 2
    assert_select "tr>td", :text => "Driver Names".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Start When".to_s, :count => 2
    assert_select "tr>td", :text => "End When".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
