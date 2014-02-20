# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "reminds/show" do
  before(:each) do
    @remind = assign(:remind, stub_model(Remind,
      :name => "Name",
      :repeating => 1,
      :remind => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
