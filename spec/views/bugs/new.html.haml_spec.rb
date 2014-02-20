# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "bugs/new" do
  before(:each) do
    assign(:bug, stub_model(Bug,
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new bug form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bugs_path, "post" do
      assert_select "textarea#bug_desc[name=?]", "bug[desc]"
    end
  end
end
