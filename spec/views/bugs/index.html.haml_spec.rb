# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "bugs/index" do
  before(:each) do
    assign(:bugs, [
      stub_model(Bug,
        :desc => "MyText"
      ),
      stub_model(Bug,
        :desc => "MyText"
      )
    ])
  end

  it "renders a list of bugs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
