require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :mobile_number => "MyString",
      :account_number => "MyString",
      :account_name => "MyString",
      :email => "MyString",
      :password_hash => "MyString",
      :password_salt => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_mobile_number", :name => "user[mobile_number]"
      assert_select "input#user_account_number", :name => "user[account_number]"
      assert_select "input#user_account_name", :name => "user[account_name]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_password_hash", :name => "user[password_hash]"
      assert_select "input#user_password_salt", :name => "user[password_salt]"
    end
  end
end
