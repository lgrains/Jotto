require 'spec_helper'

describe "user_guesses/edit" do
  before(:each) do
    @user_guess = assign(:user_guess, stub_model(UserGuess,
      :word => "",
      :num_jots => 1
    ))
  end

  it "renders the edit user_guess form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_guesses_path(@user_guess), :method => "post" do
      assert_select "input#user_guess_word", :name => "user_guess[word]"
      assert_select "input#user_guess_num_jots", :name => "user_guess[num_jots]"
    end
  end
end
