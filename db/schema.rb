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

ActiveRecord::Schema.define(:version => 20150208161953) do

  create_table "classification_systems", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "finalized_by_id"
    t.datetime "finalized_at"
    t.integer  "created_by_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "classifications", :force => true do |t|
    t.integer  "parent_id"
    t.integer  "classification_system_id"
    t.integer  "screening_id"
    t.integer  "preservation_and_disposal_id"
    t.integer  "finalized_by_id"
    t.datetime "finalized_at"
    t.integer  "created_by_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "cross_references", :force => true do |t|
    t.string   "from_type"
    t.integer  "from_id"
    t.string   "to_type"
    t.string   "to_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "document_descriptions", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "document_type",                :default => 0
    t.integer  "integer",                      :default => 0
    t.integer  "document_status",              :default => 0
    t.integer  "author_id"
    t.integer  "preservation_and_disposal_id"
    t.integer  "screening_id"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "document_links", :force => true do |t|
    t.integer  "document_description_id"
    t.integer  "record_id"
    t.integer  "role"
    t.datetime "linked_at"
    t.integer  "linked_by_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "document_links", ["document_description_id"], :name => "index_document_links_on_document_description_id"
  add_index "document_links", ["linked_by_id"], :name => "index_document_links_on_linked_by_id"
  add_index "document_links", ["record_id"], :name => "index_document_links_on_record_id"

  create_table "document_objects", :force => true do |t|
    t.integer  "document_object_id"
    t.integer  "version"
    t.string   "variant_format"
    t.string   "format"
    t.string   "format_details"
    t.string   "checksum"
    t.string   "checksum_algorithm"
    t.integer  "file_size"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "filings", :force => true do |t|
    t.integer  "parent_id"
    t.integer  "classification_id"
    t.integer  "series_id"
    t.string   "identifier"
    t.string   "title"
    t.string   "official_title"
    t.text     "description"
    t.integer  "screening_id"
    t.integer  "preservation_and_disposal_id"
    t.integer  "finalized_by_id"
    t.datetime "finalized_at"
    t.integer  "created_by_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "filings", ["classification_id"], :name => "index_filings_on_classification_id"
  add_index "filings", ["parent_id"], :name => "index_filings_on_parent_id"
  add_index "filings", ["series_id"], :name => "index_filings_on_series_id"

  create_table "fonds", :force => true do |t|
    t.integer  "parent_id"
    t.string   "title"
    t.text     "description"
    t.integer  "finalized_by_id"
    t.datetime "finalized_at"
    t.integer  "created_by_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "fonds", ["parent_id"], :name => "index_fonds_on_parent_id"

  create_table "preservation_and_disposals", :force => true do |t|
    t.text     "disposal_decision"
    t.text     "disposal_authority"
    t.integer  "preservation_time"
    t.integer  "disposed_of_by_id"
    t.datetime "disposed_of_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "records", :force => true do |t|
    t.integer  "filing_id"
    t.integer  "series_id"
    t.integer  "classification_id"
    t.string   "identifier"
    t.string   "title"
    t.string   "official_title"
    t.text     "description"
    t.integer  "screening_id"
    t.integer  "preservation_and_disposal_id"
    t.integer  "finalized_by_id"
    t.datetime "finalized_at"
    t.integer  "created_by_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "records", ["filing_id"], :name => "index_records_on_filing_id"
  add_index "records", ["series_id"], :name => "index_records_on_series_id"

  create_table "remarks", :force => true do |t|
    t.string   "remarkable_type"
    t.integer  "remarkable_id"
    t.text     "text"
    t.integer  "type"
    t.integer  "created_by_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "remarks", ["created_by_id"], :name => "index_remarks_on_created_by_id"

  create_table "screenings", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "series", :force => true do |t|
    t.integer  "fonds_id"
    t.integer  "classification_system_id"
    t.integer  "precursor_id"
    t.integer  "successor_id"
    t.string   "title"
    t.text     "description"
    t.integer  "screening_id"
    t.integer  "preservation_and_disposal_id"
    t.datetime "records_period_start_at"
    t.datetime "records_period_end_at"
    t.integer  "finalized_by_id"
    t.datetime "finalized_at"
    t.integer  "created_by_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "series", ["classification_system_id"], :name => "index_series_on_classification_system_id"
  add_index "series", ["fonds_id"], :name => "index_series_on_fonds_id"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tags", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
