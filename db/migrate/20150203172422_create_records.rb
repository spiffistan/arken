class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|

      t.belongs_to :file, index: true, null: false
      t.belongs_to :series, index: true, null: false
      t.belongs_to :classification, index: true, null: false

      t.string :identifier
      t.string :title
      t.string :official_title

      t.text :description

      t.belongs_to :screening, index: true
      t.belongs_to :preservation_and_disposal, index: true

      t.belongs_to :finalized_by, index: true
      t.datetime :finalized_at
      t.belongs_to :created_by, index: true
      t.timestamps

    end
  end
end
