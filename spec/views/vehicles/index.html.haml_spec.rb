# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "vehicles/index" do
  before(:each) do
    assign(:vehicles, [
      stub_model(Vehicle,
        :paizhao => "Paizhao",
        :xinghao => "Xinghao",
        :leixing => "Leixing"
      ),
      stub_model(Vehicle,
        :paizhao => "Paizhao",
        :xinghao => "Xinghao",
        :leixing => "Leixing"
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Paizhao".to_s, :count => 2
    assert_select "tr>td", :text => "Xinghao".to_s, :count => 2
    assert_select "tr>td", :text => "Leixing".to_s, :count => 2
  end
end
