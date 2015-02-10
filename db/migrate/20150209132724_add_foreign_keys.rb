class AddForeignKeys < ActiveRecord::Migration
  def change

    # Fonds
    add_foreign_key :fonds, :records_creators

    add_foreign_key :fonds, :users, column: :finalized_by_id
    add_foreign_key :fonds, :users, column: :created_by_id


    # Classification systems
    add_foreign_key :classification_systems, :users, column: :finalized_by_id
    add_foreign_key :classification_systems, :users, column: :created_by_id


    # Series
    add_foreign_key :series, :fonds, column: :fonds_id
    add_foreign_key :series, :classification_systems

    add_foreign_key :series, :users, column: :finalized_by_id
    add_foreign_key :series, :users, column: :created_by_id


    # Classifications
    add_foreign_key :classifications, :classification_systems

    add_foreign_key :classifications, :users, column: :finalized_by_id
    add_foreign_key :classifications, :users, column: :created_by_id


    # Files
    add_foreign_key :filings, :classifications
    add_foreign_key :filings, :series, column: :series_id

    add_foreign_key :filings, :users,  column: :finalized_by_id
    add_foreign_key :filings, :users,  column: :created_by_id


    # Records
    add_foreign_key :records, :filings
    add_foreign_key :records, :series, column: :series_id
    add_foreign_key :records, :classifications

    add_foreign_key :records, :users,  column: :finalized_by_id
    add_foreign_key :records, :users,  column: :created_by_id


    # Document descriptions
    add_foreign_key :document_descriptions, :users, column: :author_id
    add_foreign_key :document_descriptions, :preservation_and_disposals
    add_foreign_key :document_descriptions, :screenings

  end
end
