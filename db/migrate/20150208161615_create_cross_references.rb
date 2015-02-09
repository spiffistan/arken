class CreateCrossReferences < ActiveRecord::Migration
  def change
    create_table :cross_references do |t|

      t.string :from_type
      t.integer :from_id, index: true
      t.string :to_type
      t.integer :to_id, index: true

      t.timestamps
    end
  end
end
