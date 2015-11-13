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

ActiveRecord::Schema.define(version: 20151113061235) do

  create_table "boletus", force: :cascade do |t|
    t.integer  "movie_id",     limit: 4
    t.integer  "ticket_id",    limit: 4
    t.integer  "pricecredit",  limit: 4
    t.integer  "pricepoints",  limit: 4
    t.integer  "numberpoints", limit: 4
    t.boolean  "typeboletus"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "boletus", ["movie_id"], name: "index_boletus_on_movie_id", using: :btree
  add_index "boletus", ["ticket_id"], name: "index_boletus_on_ticket_id", using: :btree

  create_table "chairs", force: :cascade do |t|
    t.integer  "numberChairP", limit: 4
    t.integer  "numberChairG", limit: 4
    t.integer  "occupiedP",    limit: 4
    t.integer  "occupiedG",    limit: 4
    t.integer  "seat_id",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "chairs", ["seat_id"], name: "index_chairs_on_seat_id", using: :btree

  create_table "coments", force: :cascade do |t|
    t.integer  "socio_id",   limit: 4
    t.integer  "movie_id",   limit: 4
    t.string   "coment",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "coments", ["movie_id"], name: "index_coments_on_movie_id", using: :btree
  add_index "coments", ["socio_id"], name: "index_coments_on_socio_id", using: :btree

  create_table "halls", force: :cascade do |t|
    t.integer  "seat_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "halls", ["seat_id"], name: "index_halls_on_seat_id", using: :btree

  create_table "horaries", force: :cascade do |t|
    t.date     "begin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.integer  "horary_id",   limit: 4
    t.integer  "hall_id",     limit: 4
    t.string   "name",        limit: 255
    t.integer  "duration",    limit: 4
    t.string   "information", limit: 255
    t.boolean  "dimension"
    t.integer  "quality_id",  limit: 4
    t.integer  "chair_id",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "movies", ["chair_id"], name: "index_movies_on_chair_id", using: :btree
  add_index "movies", ["hall_id"], name: "index_movies_on_hall_id", using: :btree
  add_index "movies", ["horary_id"], name: "index_movies_on_horary_id", using: :btree
  add_index "movies", ["quality_id"], name: "index_movies_on_quality_id", using: :btree

  create_table "qualities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "seats", force: :cascade do |t|
    t.string   "addres",     limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "socios", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "document",     limit: 255
    t.string   "lastname",     limit: 255
    t.string   "email",        limit: 255
    t.string   "password",     limit: 255
    t.integer  "numberpoints", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer  "socio_id",         limit: 4
    t.integer  "totalpricepoints", limit: 4
    t.integer  "totalpricecredit", limit: 4
    t.integer  "totalpoints",      limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "tickets", ["socio_id"], name: "index_tickets_on_socio_id", using: :btree

  add_foreign_key "boletus", "movies"
  add_foreign_key "boletus", "tickets"
  add_foreign_key "chairs", "seats"
  add_foreign_key "coments", "movies"
  add_foreign_key "coments", "socios"
  add_foreign_key "halls", "seats"
  add_foreign_key "movies", "chairs"
  add_foreign_key "movies", "halls"
  add_foreign_key "movies", "horaries"
  add_foreign_key "movies", "qualities"
  add_foreign_key "tickets", "socios"
end
