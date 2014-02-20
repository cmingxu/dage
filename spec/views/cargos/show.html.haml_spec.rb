# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "cargos/show" do
  before(:each) do
    @cargo = assign(:cargo, stub_model(Cargo,
      :serial_num => "Serial Num",
      :form_huozhan_id => 1,
      :to_huozhan_id => 2,
      :from_huozhan_name => "From Huozhan Name",
      :to_huozhan_name => "To Huozhan Name",
      :huoyun_route_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Serial Num/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/From Huozhan Name/)
    rendered.should match(/To Huozhan Name/)
    rendered.should match(/3/)
  end
end
