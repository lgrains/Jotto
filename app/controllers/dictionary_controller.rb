class DictionaryController < ApplicationController
  
  def show_words
    @dict = Dictionary.includes(:word_sets).find(params[:id])
    @letter = params[:letter]
    @words = @dict.find_words_with_start(@letter)
        
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @words }
    end
  end
  
  def index
    
    @dict = Dictionary.includes(:word_sets).find_by_game_id(params[:game_id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @words }
    end
  end
end
