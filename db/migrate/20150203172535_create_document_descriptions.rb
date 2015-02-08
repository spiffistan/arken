class CreateDocumentDescriptions < ActiveRecord::Migration
  def change
    create_table :document_descriptions do |t|

      t.string :title
      t.text :description

      t.integer :document_type, :integer, default: 0
      t.integer :document_status, :integer, default: 0

      # t.string :document_medium # (B) NOTE: M2M, enum?
      # t.string :storage_location # (V) NOTE: ref. location?

      t.references :author
      t.references :preservation_and_disposal
      t.references :screening

      t.timestamps
    end
  end
end
