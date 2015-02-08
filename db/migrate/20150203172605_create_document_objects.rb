class CreateDocumentObjects < ActiveRecord::Migration
  def change
    create_table :document_objects do |t|

      t.references :document_object

      t.integer :version
      t.string :variant_format
      t.string :format
      t.string :format_details

      t.string :checksum
      t.string :checksum_algorithm
      t.integer :file_size

      t.timestamps
    end
  end
end
