# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "items/show" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :name => "Name",
      :xinghao => "Xinghao",
      :danjia => 1.5,
      :tuzhi => "Tuzhi",
      :danwei => "Danwei",
      :quantity => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Xinghao/)
    rendered.should match(/1.5/)
    rendered.should match(/Tuzhi/)
    rendered.should match(/Danwei/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
