require 'spec_helper'

describe "showings/edit" do
  before(:each) do
    @showing = assign(:showing, stub_model(Showing,
      :type => "",
      :movie_id => 1
    ))
  end

  it "renders the edit showing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => showings_path(@showing), :method => "post" do
      assert_select "select#showing_type", :name => "showing[type]"
      assert_select "input#showing_movie_id", :name => "showing[movie_id]"
    end
  end
end
