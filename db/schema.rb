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

ActiveRecord::Schema.define(version: 20160530030324) do

  create_table "archives", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blog_tag_ships", force: :cascade do |t|
    t.integer  "blog_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "blog_tag_ships", ["tag_id"], name: "index_blog_tag_ships_on_tag_id"

  create_table "blogs", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "archive_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "published"
  end

  add_index "blogs", ["archive_id"], name: "index_blogs_on_archive_id"

  create_table "comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "blog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["blog_id"], name: "index_comments_on_blog_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.integer  "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
