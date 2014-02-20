# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "reasons/edit" do
  before(:each) do
    @reason = assign(:reason, stub_model(Reason,
      :reason => "MyString",
      :details => "MyText"
    ))
  end

  it "renders the edit reason form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reason_path(@reason), "post" do
      assert_select "input#reason_reason[name=?]", "reason[reason]"
      assert_select "textarea#reason_details[name=?]", "reason[details]"
    end
  end
end
