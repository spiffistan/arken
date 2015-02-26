class CreateDocumentObjects < ActiveRecord::Migration
  def change
    create_table :document_objects do |t|

      t.belongs_to :documentable, index: true, polymorphic: true

      t.string :document_version
      t.string :document_variant
      t.string :document_format
      t.string :document_format_details

      t.string :checksum
      t.string :checksum_algorithm

      t.integer :file_size

      t.timestamps null: false
    end
  end
end
