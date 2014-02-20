# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "huoyun_routes/show" do
  before(:each) do
    @huoyun_route = assign(:huoyun_route, stub_model(HuoyunRoute,
      :form_huozhan_id => 1,
      :to_huozhan_id => "To Huozhan",
      :fahuo_time => "Fahuo Time",
      :daohuo_time => "Daohuo Time",
      :destription => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/To Huozhan/)
    rendered.should match(/Fahuo Time/)
    rendered.should match(/Daohuo Time/)
    rendered.should match(/MyText/)
  end
end
