# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "reminds/new" do
  before(:each) do
    assign(:remind, stub_model(Remind,
      :name => "MyString",
      :repeating => 1,
      :remind => 1
    ).as_new_record)
  end

  it "renders new remind form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reminds_path, "post" do
      assert_select "input#remind_name[name=?]", "remind[name]"
      assert_select "input#remind_repeating[name=?]", "remind[repeating]"
      assert_select "input#remind_remind[name=?]", "remind[remind]"
    end
  end
end
