require 'spec_helper'

describe "secret_words/show" do
  before(:each) do
    @secret_word = assign(:secret_word, stub_model(SecretWord))
  end

  it "renders attributes in <p>" do
    render
  end
end
