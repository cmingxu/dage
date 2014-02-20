require 'spec_helper'

describe "hetongs/edit" do
  before(:each) do
    @hetong = assign(:hetong, stub_model(Hetong,
      :bianhao => "MyString",
      :client_name => "MyString",
      :client_contact => "MyString",
      :price => "MyString",
      :beizhu => "MyText"
    ))
  end

  it "renders the edit hetong form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hetong_path(@hetong), "post" do
      assert_select "input#hetong_bianhao[name=?]", "hetong[bianhao]"
      assert_select "input#hetong_client_name[name=?]", "hetong[client_name]"
      assert_select "input#hetong_client_contact[name=?]", "hetong[client_contact]"
      assert_select "input#hetong_price[name=?]", "hetong[price]"
      assert_select "textarea#hetong_beizhu[name=?]", "hetong[beizhu]"
    end
  end
end
