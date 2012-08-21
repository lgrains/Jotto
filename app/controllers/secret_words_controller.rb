class SecretWordsController < ApplicationController
  # GET /secret_words
  # GET /secret_words.json
  def index
    @secret_words = SecretWord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @secret_words }
    end
  end

  # GET /secret_words/1
  # GET /secret_words/1.json
  def show
    @secret_word = SecretWord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @secret_word }
    end
  end

  # GET /secret_words/new
  # GET /secret_words/new.json
  def new
    @secret_word = SecretWord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @secret_word }
    end
  end

  # GET /secret_words/1/edit
  def edit
    @secret_word = SecretWord.find(params[:id])
  end

  # POST /secret_words
  # POST /secret_words.json
  def create
    @secret_word = SecretWord.new(params[:secret_word])

    respond_to do |format|
      if @secret_word.save
        format.html { redirect_to @secret_word, notice: 'Secret word was successfully created.' }
        format.json { render json: @secret_word, status: :created, location: @secret_word }
      else
        format.html { render action: "new" }
        format.json { render json: @secret_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /secret_words/1
  # PUT /secret_words/1.json
  def update
    @secret_word = SecretWord.find(params[:id])

    respond_to do |format|
      if @secret_word.update_attributes(params[:secret_word])
        format.html { redirect_to @secret_word, notice: 'Secret word was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @secret_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secret_words/1
  # DELETE /secret_words/1.json
  def destroy
    @secret_word = SecretWord.find(params[:id])
    @secret_word.destroy

    respond_to do |format|
      format.html { redirect_to secret_words_url }
      format.json { head :ok }
    end
  end
end
