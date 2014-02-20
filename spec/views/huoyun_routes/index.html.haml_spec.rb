# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "huoyun_routes/index" do
  before(:each) do
    assign(:huoyun_routes, [
      stub_model(HuoyunRoute,
        :form_huozhan_id => 1,
        :to_huozhan_id => "To Huozhan",
        :fahuo_time => "Fahuo Time",
        :daohuo_time => "Daohuo Time",
        :destription => "MyText"
      ),
      stub_model(HuoyunRoute,
        :form_huozhan_id => 1,
        :to_huozhan_id => "To Huozhan",
        :fahuo_time => "Fahuo Time",
        :daohuo_time => "Daohuo Time",
        :destription => "MyText"
      )
    ])
  end

  it "renders a list of huoyun_routes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "To Huozhan".to_s, :count => 2
    assert_select "tr>td", :text => "Fahuo Time".to_s, :count => 2
    assert_select "tr>td", :text => "Daohuo Time".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
