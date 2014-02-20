# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "huozhans/new" do
  before(:each) do
    assign(:huozhan, stub_model(Huozhan,
      :huozhan_name => "MyString",
      :huozhan_address => "MyString",
      :huozhan_tel => "MyString"
    ).as_new_record)
  end

  it "renders new huozhan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", huozhans_path, "post" do
      assert_select "input#huozhan_huozhan_name[name=?]", "huozhan[huozhan_name]"
      assert_select "input#huozhan_huozhan_address[name=?]", "huozhan[huozhan_address]"
      assert_select "input#huozhan_huozhan_tel[name=?]", "huozhan[huozhan_tel]"
    end
  end
end
