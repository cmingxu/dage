# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "huoyun_routes/edit" do
  before(:each) do
    @huoyun_route = assign(:huoyun_route, stub_model(HuoyunRoute,
      :form_huozhan_id => 1,
      :to_huozhan_id => "MyString",
      :fahuo_time => "MyString",
      :daohuo_time => "MyString",
      :destription => "MyText"
    ))
  end

  it "renders the edit huoyun_route form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", huoyun_route_path(@huoyun_route), "post" do
      assert_select "input#huoyun_route_form_huozhan_id[name=?]", "huoyun_route[form_huozhan_id]"
      assert_select "input#huoyun_route_to_huozhan_id[name=?]", "huoyun_route[to_huozhan_id]"
      assert_select "input#huoyun_route_fahuo_time[name=?]", "huoyun_route[fahuo_time]"
      assert_select "input#huoyun_route_daohuo_time[name=?]", "huoyun_route[daohuo_time]"
      assert_select "textarea#huoyun_route_destription[name=?]", "huoyun_route[destription]"
    end
  end
end
