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

ActiveRecord::Schema.define(version: 20151227130552) do

  create_table "artists", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artists_poaitems", id: false, force: true do |t|
    t.integer "poaitem_id", null: false
    t.integer "artist_id",  null: false
    t.string  "name"
    t.integer "year"
  end

  add_index "artists_poaitems", ["artist_id", "poaitem_id"], name: "index_artists_poaitems_on_artist_id_and_poaitem_id"
  add_index "artists_poaitems", ["poaitem_id", "artist_id"], name: "index_artists_poaitems_on_poaitem_id_and_artist_id"

  create_table "poaitems", force: true do |t|
    t.string   "content"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "poaitems_poas", id: false, force: true do |t|
    t.integer "poa_id",     null: false
    t.integer "poaitem_id", null: false
    t.integer "itemorder"
  end

  add_index "poaitems_poas", ["poa_id", "poaitem_id"], name: "index_poaitems_poas_on_poa_id_and_poaitem_id"
  add_index "poaitems_poas", ["poaitem_id", "poa_id"], name: "index_poaitems_poas_on_poaitem_id_and_poa_id"

  create_table "poas", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "poas_tags", id: false, force: true do |t|
    t.integer "poa_id", null: false
    t.integer "tag_id", null: false
  end

  add_index "poas_tags", ["poa_id", "tag_id"], name: "index_poas_tags_on_poa_id_and_tag_id"
  add_index "poas_tags", ["tag_id", "poa_id"], name: "index_poas_tags_on_tag_id_and_poa_id"

  create_table "publications", force: true do |t|
    t.string   "name"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
