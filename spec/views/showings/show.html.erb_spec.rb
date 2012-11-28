require 'spec_helper'

describe "showings/show" do
  before(:each) do
    @showing = assign(:showing, stub_model(Showing,
      :type => "Type",
      :movie_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    rendered.should match(/1/)
  end
end
