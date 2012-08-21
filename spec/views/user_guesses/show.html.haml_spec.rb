require 'spec_helper'

describe "user_guesses/show" do
  before(:each) do
    @user_guess = assign(:user_guess, stub_model(UserGuess,
      :word => "",
      :num_jots => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
