class CreateFonds < ActiveRecord::Migration
  def change
    create_table :fonds do |t|
      t.uuid :uuid, default: 'uuid_generate_v4()', null: false

      t.string :ancestry, index: true
      t.integer :status, index: true

      t.string :title
      t.text :description
      t.belongs_to :finalized_by, index: true
      t.datetime :finalized_at
      t.belongs_to :created_by, index: true
      t.timestamps null: false
    end
  end
end
