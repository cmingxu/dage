# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "huozhans/edit" do
  before(:each) do
    @huozhan = assign(:huozhan, stub_model(Huozhan,
      :huozhan_name => "MyString",
      :huozhan_address => "MyString",
      :huozhan_tel => "MyString"
    ))
  end

  it "renders the edit huozhan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", huozhan_path(@huozhan), "post" do
      assert_select "input#huozhan_huozhan_name[name=?]", "huozhan[huozhan_name]"
      assert_select "input#huozhan_huozhan_address[name=?]", "huozhan[huozhan_address]"
      assert_select "input#huozhan_huozhan_tel[name=?]", "huozhan[huozhan_tel]"
    end
  end
end
