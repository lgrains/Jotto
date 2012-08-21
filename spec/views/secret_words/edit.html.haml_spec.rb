require 'spec_helper'

describe "secret_words/edit" do
  before(:each) do
    @secret_word = assign(:secret_word, stub_model(SecretWord))
  end

  it "renders the edit secret_word form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => secret_words_path(@secret_word), :method => "post" do
    end
  end
end
