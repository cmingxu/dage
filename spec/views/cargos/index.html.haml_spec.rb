# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "cargos/index" do
  before(:each) do
    assign(:cargos, [
      stub_model(Cargo,
        :serial_num => "Serial Num",
        :form_huozhan_id => 1,
        :to_huozhan_id => 2,
        :from_huozhan_name => "From Huozhan Name",
        :to_huozhan_name => "To Huozhan Name",
        :huoyun_route_id => 3
      ),
      stub_model(Cargo,
        :serial_num => "Serial Num",
        :form_huozhan_id => 1,
        :to_huozhan_id => 2,
        :from_huozhan_name => "From Huozhan Name",
        :to_huozhan_name => "To Huozhan Name",
        :huoyun_route_id => 3
      )
    ])
  end

  it "renders a list of cargos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Serial Num".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "From Huozhan Name".to_s, :count => 2
    assert_select "tr>td", :text => "To Huozhan Name".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
