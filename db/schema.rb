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

ActiveRecord::Schema.define(version: 20140907055616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "title",        null: false
    t.string   "author"
    t.string   "guid",         null: false
    t.string   "link"
    t.string   "image_url"
    t.text     "description"
    t.datetime "published_at", null: false
    t.integer  "feed_id",      null: false
    t.string   "feed_title"
    t.integer  "category_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articles", ["author"], name: "index_articles_on_author", using: :btree
  add_index "articles", ["category_id"], name: "index_articles_on_category_id", using: :btree
  add_index "articles", ["feed_id"], name: "index_articles_on_feed_id", using: :btree
  add_index "articles", ["guid"], name: "index_articles_on_guid", unique: true, using: :btree
  add_index "articles", ["title"], name: "index_articles_on_title", using: :btree

  create_table "categories", force: true do |t|
    t.string   "title",      null: false
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["title"], name: "index_categories_on_title", unique: true, using: :btree

  create_table "comments", force: true do |t|
    t.integer  "article_id", null: false
    t.integer  "user_id",    null: false
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "feeds", force: true do |t|
    t.string   "title",       null: false
    t.string   "url",         null: false
    t.string   "image_url"
    t.integer  "category_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feeds", ["title"], name: "index_feeds_on_title", unique: true, using: :btree
  add_index "feeds", ["url"], name: "index_feeds_on_url", unique: true, using: :btree

  create_table "pg_search_documents", force: true do |t|
    t.text     "content"
    t.integer  "searchable_id"
    t.string   "searchable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "read_articles", force: true do |t|
    t.integer  "user_id",                     null: false
    t.integer  "article_id",                  null: false
    t.boolean  "read_status", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "read_articles", ["article_id"], name: "index_read_articles_on_article_id", using: :btree
  add_index "read_articles", ["user_id"], name: "index_read_articles_on_user_id", using: :btree

  create_table "saved_for_laters", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "article_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "saved_for_laters", ["article_id"], name: "index_saved_for_laters_on_article_id", using: :btree
  add_index "saved_for_laters", ["user_id"], name: "index_saved_for_laters_on_user_id", using: :btree

  create_table "user_feeds", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "feed_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_feeds", ["feed_id"], name: "index_user_feeds_on_feed_id", using: :btree
  add_index "user_feeds", ["user_id"], name: "index_user_feeds_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
