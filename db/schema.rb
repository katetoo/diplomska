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

ActiveRecord::Schema.define(version: 20150525162638) do

  create_table "generic_names", force: true do |t|
    t.string "genericko_ime"
    t.string "detalna_podelba"
    t.string "sostav"
    t.string "indikacii"
    t.string "interakcii"
    t.string "dejstvo"
    t.string "merki_na_pretpazlivost"
    t.string "doziranje"
    t.string "nesakani_dejstva"
    t.string "kontraindikacii"
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

  create_table "subgroups", force: true do |t|
    t.string  "ime_podgrupa"
    t.integer "group_id"
  end

  create_table "substitutions", force: true do |t|
    t.string  "ime_podelba"
    t.integer "subgroup_id"
  end

end
