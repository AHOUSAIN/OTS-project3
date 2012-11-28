require 'spec_helper'

describe "showings/new" do
  before(:each) do
    assign(:showing, stub_model(Showing,
      :type => "",
      :movie_id => 1
    ).as_new_record)
  end

  it "renders new showing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => showings_path, :method => "post" do
      assert_select "input#showing_type", :name => "showing[type]"
      assert_select "input#showing_movie_id", :name => "showing[movie_id]"
    end
  end
end
