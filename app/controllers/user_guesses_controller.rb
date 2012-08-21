class UserGuessesController < ApplicationController
  # GET /user_guesses
  # GET /user_guesses.json
  def index
    @user_guesses = UserGuess.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_guesses }
    end
  end

  # GET /user_guesses/1
  # GET /user_guesses/1.json
  def show
    @user_guess = UserGuess.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_guess }
    end
  end

  # GET /user_guesses/new
  # GET /user_guesses/new.json
  def new
    @user_guess = UserGuess.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_guess }
    end
  end

  # GET /user_guesses/1/edit
  def edit
    @user_guess = UserGuess.find(params[:id])
  end

  # POST /user_guesses
  # POST /user_guesses.json
  def create
    @user_guess = UserGuess.new(params[:user_guess])

    respond_to do |format|
      if @user_guess.save
        format.html { redirect_to @user_guess, notice: 'User guess was successfully created.' }
        format.json { render json: @user_guess, status: :created, location: @user_guess }
      else
        format.html { render action: "new" }
        format.json { render json: @user_guess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_guesses/1
  # PUT /user_guesses/1.json
  def update
    @user_guess = UserGuess.find(params[:id])

    respond_to do |format|
      if @user_guess.update_attributes(params[:user_guess])
        format.html { redirect_to @user_guess, notice: 'User guess was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_guess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_guesses/1
  # DELETE /user_guesses/1.json
  def destroy
    @user_guess = UserGuess.find(params[:id])
    @user_guess.destroy

    respond_to do |format|
      format.html { redirect_to user_guesses_url }
      format.json { head :ok }
    end
  end
end
