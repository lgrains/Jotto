require 'spec_helper'

describe Player do
  before(:all) do
     @game = Game.create
   end
   
   before(:each) do
      #creating the game creates two anon players
      #set player1's name
      @game.players[0].name = 'Tester'
      @game.players[0].save!
      @player = @game.players[0]
    end
    
  it "should set and get secret word correctly" do
    #first check that the secret word id for player is set correctly
    @player.secret_word = 'admit'         #set
    @player.secret_word.should == 'admit' #get
    
    #next test that the word_set got marked as belonging to this player
    dict_id = @game.dictionary.id
    word_arr = WordSet.where(dictionary_id = dict_id)
    word_set = word_arr.to_a.detect{|o| o.word == 'admit'}
    
    word_set.word_used_in_game_by.should == @player.id
  end
  
  it "should set and get a user_guess correctly" do
    @player.user_guess = 'bolus'  #setting

    #next test that the word_set got marked as belonging to this player
    dict_id = @game.dictionary.id
    word_arr = WordSet.where(dictionary_id = dict_id)
    word_set = word_arr.to_a.detect{|o| o.word == 'bolus'}

    @player.user_guesses.should include word_set
  end
  
  it "should set the jots for a user_guess correctly" do
    @player.user_guess = 'bolus'
    @player.set_jots('bolus',3)       #setting
    @player.get_jots('bolus').should == 3   #getting
  end
  
  
  
end
