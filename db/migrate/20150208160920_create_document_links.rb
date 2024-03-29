class CreateDocumentLinks < ActiveRecord::Migration
  def change
    create_table :document_links do |t|
      t.uuid :uuid, default: 'uuid_generate_v4()', null: false

      t.belongs_to :document_description, index: true
      t.belongs_to :record, index: true
      t.integer :role
      t.datetime :linked_at
      t.belongs_to :linked_by, index: true

      t.timestamps null: false
    end
  end
end
