require 'spec_helper'

describe "secret_words/new" do
  before(:each) do
    assign(:secret_word, stub_model(SecretWord).as_new_record)
  end

  it "renders new secret_word form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => secret_words_path, :method => "post" do
    end
  end
end
