class CreateFonds < ActiveRecord::Migration
  def change
    create_table :fonds do |t|
      t.belongs_to :parent, index: true
      t.string :title
      t.text :description

      t.belongs_to :finalized_by, index: true
      t.datetime :finalized_at
      t.belongs_to :created_by, index: true
      t.timestamps
    end
  end
end
