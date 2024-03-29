class CreateRemarks < ActiveRecord::Migration
  def change
    create_table :remarks do |t|
      t.uuid :uuid, default: 'uuid_generate_v4()', null: false

      t.string :remarkable_type
      t.integer :remarkable_id, index: true
      t.text :text
      t.integer :type
      t.belongs_to :created_by, index: true

      t.timestamps null: false
    end
  end
end
