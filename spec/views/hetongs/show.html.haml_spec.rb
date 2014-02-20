require 'spec_helper'

describe "hetongs/show" do
  before(:each) do
    @hetong = assign(:hetong, stub_model(Hetong,
      :bianhao => "Bianhao",
      :client_name => "Client Name",
      :client_contact => "Client Contact",
      :price => "Price",
      :beizhu => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bianhao/)
    rendered.should match(/Client Name/)
    rendered.should match(/Client Contact/)
    rendered.should match(/Price/)
    rendered.should match(/MyText/)
  end
end
