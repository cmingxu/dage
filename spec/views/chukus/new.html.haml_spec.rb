require 'spec_helper'

describe "chukus/new" do
  before(:each) do
    assign(:chuku, stub_model(Chuku,
      :user_id => 1,
      :quantity => "MyString",
      :price => "MyString",
      :hetong_id => 1
    ).as_new_record)
  end

  it "renders new chuku form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chukus_path, "post" do
      assert_select "input#chuku_user_id[name=?]", "chuku[user_id]"
      assert_select "input#chuku_quantity[name=?]", "chuku[quantity]"
      assert_select "input#chuku_price[name=?]", "chuku[price]"
      assert_select "input#chuku_hetong_id[name=?]", "chuku[hetong_id]"
    end
  end
end
