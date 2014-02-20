# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "reasons/index" do
  before(:each) do
    assign(:reasons, [
      stub_model(Reason,
        :reason => "Reason",
        :details => "MyText"
      ),
      stub_model(Reason,
        :reason => "Reason",
        :details => "MyText"
      )
    ])
  end

  it "renders a list of reasons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Reason".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
