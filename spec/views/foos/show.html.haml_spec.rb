# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "foos/show" do
  before(:each) do
    @foo = assign(:foo, stub_model(Foo,
      :foo => "Foo",
      :bar => "Bar"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Foo/)
    rendered.should match(/Bar/)
  end
end
