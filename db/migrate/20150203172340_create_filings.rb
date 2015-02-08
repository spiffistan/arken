class CreateFilings < ActiveRecord::Migration
  def change
    create_table :filings do |t|
      t.belongs_to :parent, index: true
      t.belongs_to :classification, index: true
      t.belongs_to :series, index: true

      t.string :identifier
      t.string :title
      t.string :official_title
      t.text :description

      t.belongs_to :screening, index: true
      t.belongs_to :preservation_and_disposal, index: true

      # t.datetime :archived_at
      # t.references :archived_by

      t.belongs_to :finalized_by, index: true
      t.datetime :finalized_at
      t.belongs_to :created_by, index: true
      t.timestamps
    end
  end
end
