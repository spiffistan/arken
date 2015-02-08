class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.references :parent
      t.references :classification_system
      
      t.references :screening
      t.references :preservation_and_disposal

      t.references :finalized_by
      t.datetime :finalized_at
      t.references :created_by
      t.timestamps
    end
  end
end
