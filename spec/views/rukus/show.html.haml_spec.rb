# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "rukus/show" do
  before(:each) do
    @ruku = assign(:ruku, stub_model(Ruku,
      :user_id => 1,
      :quantity => 2,
      :name => "Name",
      :xinghao => "Xinghao",
      :item_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Name/)
    rendered.should match(/Xinghao/)
    rendered.should match(/3/)
  end
end
