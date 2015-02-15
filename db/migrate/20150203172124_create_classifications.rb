class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.string :ancestry, index: true
      t.belongs_to :classification_system, index: true, null: false

      t.belongs_to :screening, index: true
      t.belongs_to :preservation_and_disposal, index: true

      t.belongs_to :finalized_by, index: true
      t.datetime :finalized_at
      t.belongs_to :created_by, index: true
      t.timestamps
    end
  end
end
