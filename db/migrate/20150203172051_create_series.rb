class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.references :fonds
      t.references :classification_system
      t.references :precursor
      t.references :successor
      t.string :title
      t.text :description

      t.references :screening
      t.references :preservation_and_disposal

      t.datetime :records_period_start_at
      t.datetime :records_period_end_at

      t.references :finalized_by
      t.datetime :finalized_at
      t.references :created_by
      t.timestamps
    end
    add_index :series, :fonds_id
    add_index :series, :classification_system_id
  end
end
