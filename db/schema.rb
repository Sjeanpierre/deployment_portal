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

ActiveRecord::Schema.define(:version => 20121116190913) do

  create_table "api_keys", :force => true do |t|
    t.string   "name"
    t.string   "api_key"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "deployment_configurations", :force => true do |t|
    t.string   "tag_prefix"
    t.string   "deployment_profile_id"
    t.string   "git_repo_name"
    t.string   "git_org"
    t.string   "rightscale_array_id"
    t.string   "rightscale_account_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "deployments", :force => true do |t|
    t.string   "deployment_profile_id"
    t.string   "sha"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "tag"
  end

  create_table "tags", :force => true do |t|
    t.string   "organization"
    t.string   "repository"
    t.string   "sha"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
