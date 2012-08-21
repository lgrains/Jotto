require 'spec_helper'

describe "user_guesses/index" do
  before(:each) do
    assign(:user_guesses, [
      stub_model(UserGuess,
        :word => "",
        :num_jots => 1
      ),
      stub_model(UserGuess,
        :word => "",
        :num_jots => 1
      )
    ])
  end

  it "renders a list of user_guesses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
