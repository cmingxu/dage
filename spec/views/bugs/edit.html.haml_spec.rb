# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "bugs/edit" do
  before(:each) do
    @bug = assign(:bug, stub_model(Bug,
      :desc => "MyText"
    ))
  end

  it "renders the edit bug form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bug_path(@bug), "post" do
      assert_select "textarea#bug_desc[name=?]", "bug[desc]"
    end
  end
end
