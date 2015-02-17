class CreateFonds < ActiveRecord::Migration
  def change
    create_table :fonds do |t|
      t.string :ancestry, index: true
      t.belongs_to :records_creator, index: true
      t.string :title
      t.text :description

      t.belongs_to :finalized_by, index: true
      t.datetime :finalized_at
      t.belongs_to :created_by, index: true
      t.timestamps null: false
    end
  end
end
