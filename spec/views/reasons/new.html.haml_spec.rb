# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "reasons/new" do
  before(:each) do
    assign(:reason, stub_model(Reason,
      :reason => "MyString",
      :details => "MyText"
    ).as_new_record)
  end

  it "renders new reason form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reasons_path, "post" do
      assert_select "input#reason_reason[name=?]", "reason[reason]"
      assert_select "textarea#reason_details[name=?]", "reason[details]"
    end
  end
end
