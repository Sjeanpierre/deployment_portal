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

ActiveRecord::Schema.define(:version => 20121114200055) do

  create_table "api_keys", :force => true do |t|
    t.text     "name"
    t.text     "api_key"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "deployment_configurations", :force => true do |t|
    t.string   "tag_prefix"
    t.text     "deployment_profile_id"
    t.text     "git_repo_name"
    t.text     "git_org"
    t.text     "rightscale_array_id"
    t.text     "rightscale_account_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "deployments", :force => true do |t|
    t.integer  "deployment_profile_id"
    t.text     "sha"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

end
