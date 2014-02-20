# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "bugs/show" do
  before(:each) do
    @bug = assign(:bug, stub_model(Bug,
      :desc => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
