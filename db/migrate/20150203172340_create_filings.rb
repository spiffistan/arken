class CreateFilings < ActiveRecord::Migration
  def change
    create_table :filings do |t|
      t.references :parent
      t.references :classification
      t.references :series

      t.string :identifier
      t.string :title
      t.string :official_title
      t.text :description

      t.references :screening
      t.references :preservation_and_disposal

      # t.datetime :archived_at
      # t.references :archived_by

      t.references :finalized_by
      t.datetime :finalized_at
      t.references :created_by
      t.timestamps
    end
    add_index :filings, :classification_id
    add_index :filings, :series_id
    add_index :filings, :parent_id
  end
end
