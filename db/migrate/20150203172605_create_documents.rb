class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.uuid :uuid, default: 'uuid_generate_v4()', null: false

      t.belongs_to :documentable, index: true, polymorphic: true

      t.string :document_version
      t.string :document_variant
      t.string :document_format
      t.string :document_format_details

      t.string :file
      t.integer :file_size

      t.string :checksum
      t.string :checksum_algorithm

      t.timestamps null: false
    end
  end
end
