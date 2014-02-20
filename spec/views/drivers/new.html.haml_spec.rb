# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "drivers/new" do
  before(:each) do
    assign(:driver, stub_model(Driver,
      :name => "MyString",
      :age => 1,
      :phone => "MyString",
      :address => "MyString",
      :salary => "MyString",
      :start_date => "MyString",
      :end_date => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new driver form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", drivers_path, "post" do
      assert_select "input#driver_name[name=?]", "driver[name]"
      assert_select "input#driver_age[name=?]", "driver[age]"
      assert_select "input#driver_phone[name=?]", "driver[phone]"
      assert_select "input#driver_address[name=?]", "driver[address]"
      assert_select "input#driver_salary[name=?]", "driver[salary]"
      assert_select "input#driver_start_date[name=?]", "driver[start_date]"
      assert_select "input#driver_end_date[name=?]", "driver[end_date]"
      assert_select "textarea#driver_description[name=?]", "driver[description]"
    end
  end
end
