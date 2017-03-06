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

ActiveRecord::Schema.define(version: 20_170_303_210_417) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'comments', force: true do |t|
    t.string   'message'
    t.datetime 'created_at'
    t.datetime 'updated_at'
    t.integer  'user_id'
    t.integer  'round_id'
  end

  add_index 'comments', ['round_id'], name: 'index_comments_on_round_id', using: :btree
  add_index 'comments', ['user_id'], name: 'index_comments_on_user_id', using: :btree

  create_table 'lessons', force: true do |t|
    t.string   'picture'
    t.string   'caption'
    t.string   'advice'
    t.datetime 'created_at'
    t.datetime 'updated_at'
    t.integer  'user_id'
    t.string   'video'
  end

  add_index 'lessons', ['user_id'], name: 'index_lessons_on_user_id', using: :btree

  create_table 'messages', force: true do |t|
    t.string   'message'
    t.datetime 'created_at'
    t.datetime 'updated_at'
    t.integer  'user_id'
  end

  add_index 'messages', ['user_id'], name: 'index_messages_on_user_id', using: :btree

  create_table 'photos', force: true do |t|
    t.string   'picture'
    t.string   'caption'
    t.string   'advice'
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  create_table 'rounds', force: true do |t|
    t.string   'course'
    t.integer  'score'
    t.datetime 'created_at'
    t.datetime 'updated_at'
    t.integer  'user_id'
    t.integer  'greens'
    t.integer  'greenstotal'
    t.integer  'fwys'
    t.integer  'fwystotal'
    t.integer  'putts'
    t.integer  'birdies'
    t.integer  'pars'
  end

  add_index 'rounds', ['user_id'], name: 'index_rounds_on_user_id', using: :btree

  create_table 'users', force: true do |t|
    t.string   'email',                  default: '', null: false
    t.string   'encrypted_password',     default: '', null: false
    t.string   'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer  'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.inet     'current_sign_in_ip'
    t.inet     'last_sign_in_ip'
    t.datetime 'created_at',                          null: false
    t.datetime 'updated_at',                          null: false
    t.string   'first_name'
    t.string   'last_name'
    t.boolean  'subscribed'
    t.string   'stripeid'
  end

  add_index 'users', ['email'], name: 'index_users_on_email', unique: true, using: :btree
  add_index 'users', ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true, using: :btree
end
