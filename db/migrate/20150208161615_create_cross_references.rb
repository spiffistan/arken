class CreateCrossReferences < ActiveRecord::Migration
  def change
    create_table :cross_references do |t|
      t.string :from_type
      t.integer :from_id
      t.string :to_type
      t.string :to_id

      t.timestamps
    end
  end
end
