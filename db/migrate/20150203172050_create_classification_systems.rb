class CreateClassificationSystems < ActiveRecord::Migration
  def change
    create_table :classification_systems do |t|
      t.string :title
      t.text :description
      t.references :finalized_by
      t.datetime :finalized_at
      t.references :created_by
      t.timestamps
    end
  end
end
