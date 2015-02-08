class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.references :filing
      t.references :series
      t.references :classification

      t.string :identifier
      t.string :title
      t.string :official_title
      t.text :description

      t.references :screening
      t.references :preservation_and_disposal

      t.references :finalized_by
      t.datetime :finalized_at
      t.references :created_by
      t.timestamps

    end
    add_index :records, :filing_id
    add_index :records, :series_id
  end
end
