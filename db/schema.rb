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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150609152126) do

  create_table "generic_names", force: true do |t|
    t.string "genericko_ime"
    t.string "detalna_podelba"
    t.text   "sostav",                 limit: 255
    t.text   "indikacii",              limit: 255
    t.text   "interakcii",             limit: 255
    t.text   "dejstvo",                limit: 255
    t.text   "merki_na_pretpazlivost", limit: 255
    t.text   "doziranje",              limit: 255
    t.text   "nesakani_dejstva",       limit: 255
    t.text   "kontraindikacii",        limit: 255
    t.string "substitution_id"
  end

  create_table "groups", force: true do |t|
    t.string "ime_grupa"
  end

  create_table "medicaments", force: true do |t|
    t.string  "ime_lek"
    t.string  "komentar"
    t.integer "generic_name_id"
    t.integer "producer_id"
  end

  create_table "producers", force: true do |t|
    t.string "ime_proizvoditel"
    t.string "poteklo"
  end

  create_table "reviewgenerics", force: true do |t|
    t.string  "komentar_na_generika"
    t.integer "user_id"
    t.integer "generic_name_id"
  end

  create_table "reviewmeds", force: true do |t|
    t.string  "komentar_na_lek"
    t.integer "user_id"
    t.integer "medicament_id"
  end

  create_table "subgroups", force: true do |t|
    t.string  "ime_podgrupa"
    t.integer "group_id"
  end

  create_table "substitutions", force: true do |t|
    t.string  "ime_podelba"
    t.integer "subgroup_id"
  end

  create_table "users", force: true do |t|
    t.string  "ime_korisnik"
    t.string  "prezime_korisnik"
    t.string  "email_korisnik"
    t.string  "profesija_korisnik"
    t.boolean "admin",              default: false
    t.string  "password_digest"
  end

end
