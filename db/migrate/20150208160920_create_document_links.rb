class CreateDocumentLinks < ActiveRecord::Migration
  def change
    create_table :document_links do |t|
      t.references :document_description
      t.references :record
      t.integer :role
      t.datetime :linked_at
      t.references :linked_by

      t.timestamps
    end
    add_index :document_links, :document_id
    add_index :document_links, :record_id
    add_index :document_links, :linked_by_id
  end
end
