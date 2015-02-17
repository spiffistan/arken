class CreateDocumentDescriptions < ActiveRecord::Migration
  def change
    create_table :document_descriptions do |t|

      t.string :title
      t.text :description

      t.integer :document_type, default: 0
      t.integer :document_status, default: 0

      # t.string :document_medium # (B) NOTE: M2M, enum?
      # t.string :storage_location # (V) NOTE: ref. location?

      t.belongs_to :author, index: true
      t.belongs_to :preservation_and_disposal, index: true
      t.belongs_to :screening, index: true

      t.timestamps null: false
    end
  end
end
