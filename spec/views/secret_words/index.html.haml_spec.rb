require 'spec_helper'

describe "secret_words/index" do
  before(:each) do
    assign(:secret_words, [
      stub_model(SecretWord),
      stub_model(SecretWord)
    ])
  end

  it "renders a list of secret_words" do
    render
  end
end
