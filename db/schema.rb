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

ActiveRecord::Schema.define(version: 20170108193115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.string   "author"
    t.text     "description"
    t.string   "isbn"
    t.string   "category"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
  end

  create_table "books_lists", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "books_lists", ["book_id"], name: "index_books_lists_on_book_id", using: :btree
  add_index "books_lists", ["list_id"], name: "index_books_lists_on_list_id", using: :btree

  create_table "books_tags", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "books_tags", ["book_id"], name: "index_books_tags_on_book_id", using: :btree
  add_index "books_tags", ["tag_id"], name: "index_books_tags_on_tag_id", using: :btree

  create_table "books_users", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "books_users", ["book_id"], name: "index_books_users_on_book_id", using: :btree
  add_index "books_users", ["user_id"], name: "index_books_users_on_user_id", using: :btree

  create_table "lists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags_lists", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tags_lists", ["list_id"], name: "index_tags_lists_on_list_id", using: :btree
  add_index "tags_lists", ["tag_id"], name: "index_tags_lists_on_tag_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "list_id"
  end

  add_index "users", ["list_id"], name: "index_users_on_list_id", using: :btree

  add_foreign_key "books_lists", "books"
  add_foreign_key "books_lists", "lists"
  add_foreign_key "books_tags", "books"
  add_foreign_key "books_tags", "tags"
  add_foreign_key "books_users", "books"
  add_foreign_key "books_users", "users"
  add_foreign_key "tags_lists", "lists"
  add_foreign_key "tags_lists", "tags"
end
