class CreateDocumentLinks < ActiveRecord::Migration
  def change
    create_table :document_links do |t|

      t.belongs_to :document_description, index: true
      t.belongs_to :record, index: true
      t.integer :role
      t.datetime :linked_at
      t.belongs_to :linked_by, index: true

      t.timestamps
    end
  end
end
