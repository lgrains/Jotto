# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120822190342) do

  create_table "dictionary", :force => true do |t|
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "game_url"
  end

  create_table "games_players", :id => false, :force => true do |t|
    t.integer "game_id"
    t.integer "player_id"
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.string   "games_won"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "secret_words", :id => false, :force => true do |t|
    t.integer "player_id"
    t.integer "word_id"
  end

  create_table "user_guesses", :force => true do |t|
    t.integer "player_id"
    t.integer "word_id"
    t.integer "jots"
  end

  create_table "words", :force => true do |t|
    t.integer  "dictionary_id"
    t.string   "word_unit"
    t.string   "bitstring"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
