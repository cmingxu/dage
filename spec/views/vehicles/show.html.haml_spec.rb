# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "vehicles/show" do
  before(:each) do
    @vehicle = assign(:vehicle, stub_model(Vehicle,
      :paizhao => "Paizhao",
      :xinghao => "Xinghao",
      :leixing => "Leixing"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Paizhao/)
    rendered.should match(/Xinghao/)
    rendered.should match(/Leixing/)
  end
end
