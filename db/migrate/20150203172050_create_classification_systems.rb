class CreateClassificationSystems < ActiveRecord::Migration
  def change
    create_table :classification_systems do |t|
      t.uuid :uuid, default: 'uuid_generate_v4()', null: false

      t.string :title
      t.text :description

      t.belongs_to :finalized_by, index: true
      t.datetime :finalized_at
      t.belongs_to :created_by, index: true
      t.timestamps null: false
    end

  end
end
