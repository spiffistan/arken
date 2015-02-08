class CreateFonds < ActiveRecord::Migration
  def change
    create_table :fonds do |t|
      t.references :parent
      t.string :title
      t.text :description

      t.references :finalized_by
      t.datetime :finalized_at
      t.references :created_by
      t.timestamps
    end
    add_index :fonds, :parent_id
  end
end
