class CreateRemarks < ActiveRecord::Migration
  def change
    create_table :remarks do |t|
      t.string :remarkable_type
      t.integer :remarkable_id
      t.text :text
      t.integer :type
      t.references :created_by

      t.timestamps
    end
    add_index :remarks, :created_by_id
  end
end
