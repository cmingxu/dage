require 'spec_helper'

describe "hetongs/index" do
  before(:each) do
    assign(:hetongs, [
      stub_model(Hetong,
        :bianhao => "Bianhao",
        :client_name => "Client Name",
        :client_contact => "Client Contact",
        :price => "Price",
        :beizhu => "MyText"
      ),
      stub_model(Hetong,
        :bianhao => "Bianhao",
        :client_name => "Client Name",
        :client_contact => "Client Contact",
        :price => "Price",
        :beizhu => "MyText"
      )
    ])
  end

  it "renders a list of hetongs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bianhao".to_s, :count => 2
    assert_select "tr>td", :text => "Client Name".to_s, :count => 2
    assert_select "tr>td", :text => "Client Contact".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
