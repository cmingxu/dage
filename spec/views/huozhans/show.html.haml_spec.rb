# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "huozhans/show" do
  before(:each) do
    @huozhan = assign(:huozhan, stub_model(Huozhan,
      :huozhan_name => "Huozhan Name",
      :huozhan_address => "Huozhan Address",
      :huozhan_tel => "Huozhan Tel"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Huozhan Name/)
    rendered.should match(/Huozhan Address/)
    rendered.should match(/Huozhan Tel/)
  end
end
