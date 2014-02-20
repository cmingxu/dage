# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "reminds/edit" do
  before(:each) do
    @remind = assign(:remind, stub_model(Remind,
      :name => "MyString",
      :repeating => 1,
      :remind => 1
    ))
  end

  it "renders the edit remind form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", remind_path(@remind), "post" do
      assert_select "input#remind_name[name=?]", "remind[name]"
      assert_select "input#remind_repeating[name=?]", "remind[repeating]"
      assert_select "input#remind_remind[name=?]", "remind[remind]"
    end
  end
end
