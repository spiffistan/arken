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

ActiveRecord::Schema.define(version: 20150210162716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classification_systems", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "finalized_by_id"
    t.datetime "finalized_at"
    t.integer  "created_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "classification_systems", ["created_by_id"], name: "index_classification_systems_on_created_by_id", using: :btree
  add_index "classification_systems", ["finalized_by_id"], name: "index_classification_systems_on_finalized_by_id", using: :btree

  create_table "classifications", force: :cascade do |t|
    t.integer  "parent_id"
    t.integer  "classification_system_id",     null: false
    t.integer  "screening_id"
    t.integer  "preservation_and_disposal_id"
    t.integer  "finalized_by_id"
    t.datetime "finalized_at"
    t.integer  "created_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "classifications", ["classification_system_id"], name: "index_classifications_on_classification_system_id", using: :btree
  add_index "classifications", ["created_by_id"], name: "index_classifications_on_created_by_id", using: :btree
  add_index "classifications", ["finalized_by_id"], name: "index_classifications_on_finalized_by_id", using: :btree
  add_index "classifications", ["parent_id"], name: "index_classifications_on_parent_id", using: :btree
  add_index "classifications", ["preservation_and_disposal_id"], name: "index_classifications_on_preservation_and_disposal_id", using: :btree
  add_index "classifications", ["screening_id"], name: "index_classifications_on_screening_id", using: :btree

  create_table "cross_references", force: :cascade do |t|
    t.string   "from_type"
    t.integer  "from_id"
    t.string   "to_type"
    t.integer  "to_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cross_references", ["from_id"], name: "index_cross_references_on_from_id", using: :btree
  add_index "cross_references", ["to_id"], name: "index_cross_references_on_to_id", using: :btree

  create_table "document_descriptions", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "document_type",                default: 0
    t.integer  "document_status",              default: 0
    t.integer  "author_id"
    t.integer  "preservation_and_disposal_id"
    t.integer  "screening_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "document_descriptions", ["author_id"], name: "index_document_descriptions_on_author_id", using: :btree
  add_index "document_descriptions", ["preservation_and_disposal_id"], name: "index_document_descriptions_on_preservation_and_disposal_id", using: :btree
  add_index "document_descriptions", ["screening_id"], name: "index_document_descriptions_on_screening_id", using: :btree

  create_table "document_links", force: :cascade do |t|
    t.integer  "document_description_id"
    t.integer  "record_id"
    t.integer  "role"
    t.datetime "linked_at"
    t.integer  "linked_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "document_links", ["document_description_id"], name: "index_document_links_on_document_description_id", using: :btree
  add_index "document_links", ["linked_by_id"], name: "index_document_links_on_linked_by_id", using: :btree
  add_index "document_links", ["record_id"], name: "index_document_links_on_record_id", using: :btree

  create_table "document_objects", force: :cascade do |t|
    t.integer  "documentable_id"
    t.string   "documentable_type"
    t.integer  "version"
    t.string   "variant_format"
    t.string   "format"
    t.string   "format_details"
    t.string   "checksum"
    t.string   "checksum_algorithm"
    t.integer  "file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "document_objects", ["documentable_type", "documentable_id"], name: "index_document_objects_on_documentable_type_and_documentable_id", using: :btree

  create_table "filings", force: :cascade do |t|
    t.string   "type",                         null: false
    t.integer  "parent_id"
    t.integer  "classification_id",            null: false
    t.integer  "series_id",                    null: false
    t.string   "identifier"
    t.string   "title"
    t.string   "official_title"
    t.text     "description"
    t.integer  "screening_id"
    t.integer  "preservation_and_disposal_id"
    t.integer  "finalized_by_id"
    t.datetime "finalized_at"
    t.integer  "created_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "filings", ["classification_id"], name: "index_filings_on_classification_id", using: :btree
  add_index "filings", ["created_by_id"], name: "index_filings_on_created_by_id", using: :btree
  add_index "filings", ["finalized_by_id"], name: "index_filings_on_finalized_by_id", using: :btree
  add_index "filings", ["parent_id"], name: "index_filings_on_parent_id", using: :btree
  add_index "filings", ["preservation_and_disposal_id"], name: "index_filings_on_preservation_and_disposal_id", using: :btree
  add_index "filings", ["screening_id"], name: "index_filings_on_screening_id", using: :btree
  add_index "filings", ["series_id"], name: "index_filings_on_series_id", using: :btree

  create_table "fonds", force: :cascade do |t|
    t.integer  "records_creator_id"
    t.integer  "parent_id"
    t.string   "title"
    t.text     "description"
    t.integer  "finalized_by_id"
    t.datetime "finalized_at"
    t.integer  "created_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fonds", ["created_by_id"], name: "index_fonds_on_created_by_id", using: :btree
  add_index "fonds", ["finalized_by_id"], name: "index_fonds_on_finalized_by_id", using: :btree
  add_index "fonds", ["parent_id"], name: "index_fonds_on_parent_id", using: :btree
  add_index "fonds", ["records_creator_id"], name: "index_fonds_on_records_creator_id", using: :btree

  create_table "fonds_records_creators", force: :cascade do |t|
    t.integer  "records_creator_id"
    t.integer  "fonds_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fonds_records_creators", ["fonds_id"], name: "index_fonds_records_creators_on_fonds_id", using: :btree
  add_index "fonds_records_creators", ["records_creator_id"], name: "index_fonds_records_creators_on_records_creator_id", using: :btree

  create_table "preservation_and_disposals", force: :cascade do |t|
    t.text     "disposal_decision"
    t.text     "disposal_authority"
    t.integer  "preservation_time"
    t.integer  "disposed_of_by_id"
    t.datetime "disposed_of_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "preservation_and_disposals", ["disposed_of_by_id"], name: "index_preservation_and_disposals_on_disposed_of_by_id", using: :btree

  create_table "records", force: :cascade do |t|
    t.string   "type",                         null: false
    t.integer  "filing_id",                    null: false
    t.integer  "series_id",                    null: false
    t.integer  "classification_id",            null: false
    t.string   "identifier"
    t.string   "title"
    t.string   "official_title"
    t.text     "description"
    t.integer  "screening_id"
    t.integer  "preservation_and_disposal_id"
    t.integer  "finalized_by_id"
    t.datetime "finalized_at"
    t.integer  "created_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "records", ["classification_id"], name: "index_records_on_classification_id", using: :btree
  add_index "records", ["created_by_id"], name: "index_records_on_created_by_id", using: :btree
  add_index "records", ["filing_id"], name: "index_records_on_filing_id", using: :btree
  add_index "records", ["finalized_by_id"], name: "index_records_on_finalized_by_id", using: :btree
  add_index "records", ["preservation_and_disposal_id"], name: "index_records_on_preservation_and_disposal_id", using: :btree
  add_index "records", ["screening_id"], name: "index_records_on_screening_id", using: :btree
  add_index "records", ["series_id"], name: "index_records_on_series_id", using: :btree

  create_table "records_creators", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "remarks", force: :cascade do |t|
    t.string   "remarkable_type"
    t.integer  "remarkable_id"
    t.text     "text"
    t.integer  "type"
    t.integer  "created_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "remarks", ["created_by_id"], name: "index_remarks_on_created_by_id", using: :btree
  add_index "remarks", ["remarkable_id"], name: "index_remarks_on_remarkable_id", using: :btree

  create_table "screenings", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "series", force: :cascade do |t|
    t.integer  "fonds_id",                     null: false
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "series", ["classification_system_id"], name: "index_series_on_classification_system_id", using: :btree
  add_index "series", ["created_by_id"], name: "index_series_on_created_by_id", using: :btree
  add_index "series", ["finalized_by_id"], name: "index_series_on_finalized_by_id", using: :btree
  add_index "series", ["fonds_id"], name: "index_series_on_fonds_id", using: :btree
  add_index "series", ["precursor_id"], name: "index_series_on_precursor_id", using: :btree
  add_index "series", ["preservation_and_disposal_id"], name: "index_series_on_preservation_and_disposal_id", using: :btree
  add_index "series", ["screening_id"], name: "index_series_on_screening_id", using: :btree
  add_index "series", ["successor_id"], name: "index_series_on_successor_id", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  add_index "taggings", ["taggable_type", "taggable_id"], name: "index_taggings_on_taggable_type_and_taggable_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "classification_systems", "users", column: "created_by_id"
  add_foreign_key "classification_systems", "users", column: "finalized_by_id"
  add_foreign_key "classifications", "classification_systems"
  add_foreign_key "classifications", "users", column: "created_by_id"
  add_foreign_key "classifications", "users", column: "finalized_by_id"
  add_foreign_key "document_descriptions", "preservation_and_disposals"
  add_foreign_key "document_descriptions", "screenings"
  add_foreign_key "document_descriptions", "users", column: "author_id"
  add_foreign_key "filings", "classifications"
  add_foreign_key "filings", "series"
  add_foreign_key "filings", "users", column: "created_by_id"
  add_foreign_key "filings", "users", column: "finalized_by_id"
  add_foreign_key "fonds", "records_creators"
  add_foreign_key "fonds", "users", column: "created_by_id"
  add_foreign_key "fonds", "users", column: "finalized_by_id"
  add_foreign_key "records", "classifications"
  add_foreign_key "records", "filings"
  add_foreign_key "records", "series"
  add_foreign_key "records", "users", column: "created_by_id"
  add_foreign_key "records", "users", column: "finalized_by_id"
  add_foreign_key "series", "classification_systems"
  add_foreign_key "series", "fonds"
  add_foreign_key "series", "users", column: "created_by_id"
  add_foreign_key "series", "users", column: "finalized_by_id"
end
