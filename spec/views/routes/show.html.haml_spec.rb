# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "routes/show" do
  before(:each) do
    @route = assign(:route, stub_model(Route,
      :start_location_id => 1,
      :end_location_id => 2,
      :paizhao => "Paizhao",
      :xinghao => "Xinghao",
      :driver_names => "Driver Names",
      :mobile => "Mobile",
      :start_when => "Start When",
      :end_when => "End When",
      :paths => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Paizhao/)
    rendered.should match(/Xinghao/)
    rendered.should match(/Driver Names/)
    rendered.should match(/Mobile/)
    rendered.should match(/Start When/)
    rendered.should match(/End When/)
    rendered.should match(/MyText/)
  end
end
