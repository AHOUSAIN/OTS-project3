require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "Name",
      :mobile_number => "Mobile Number",
      :account_number => "Account Number",
      :account_name => "Account Name",
      :email => "Email",
      :password_hash => "Password Hash",
      :password_salt => "Password Salt"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Mobile Number/)
    rendered.should match(/Account Number/)
    rendered.should match(/Account Name/)
    rendered.should match(/Email/)
    rendered.should match(/Password Hash/)
    rendered.should match(/Password Salt/)
  end
end
