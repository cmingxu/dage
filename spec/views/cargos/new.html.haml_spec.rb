# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "cargos/new" do
  before(:each) do
    assign(:cargo, stub_model(Cargo,
      :serial_num => "MyString",
      :form_huozhan_id => 1,
      :to_huozhan_id => 1,
      :from_huozhan_name => "MyString",
      :to_huozhan_name => "MyString",
      :huoyun_route_id => 1
    ).as_new_record)
  end

  it "renders new cargo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cargos_path, "post" do
      assert_select "input#cargo_serial_num[name=?]", "cargo[serial_num]"
      assert_select "input#cargo_form_huozhan_id[name=?]", "cargo[form_huozhan_id]"
      assert_select "input#cargo_to_huozhan_id[name=?]", "cargo[to_huozhan_id]"
      assert_select "input#cargo_from_huozhan_name[name=?]", "cargo[from_huozhan_name]"
      assert_select "input#cargo_to_huozhan_name[name=?]", "cargo[to_huozhan_name]"
      assert_select "input#cargo_huoyun_route_id[name=?]", "cargo[huoyun_route_id]"
    end
  end
end
