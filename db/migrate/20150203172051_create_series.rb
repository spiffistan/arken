class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|

      t.belongs_to :fonds, index: true, null: false
      t.belongs_to :classification_system, index: true
      t.belongs_to :precursor, index: true
      t.belongs_to :successor, index: true

      t.string :title
      t.text :description

      t.belongs_to :screening, index: true
      t.belongs_to :preservation_and_disposal, index: true

      t.datetime :records_period_start_at
      t.datetime :records_period_end_at

      t.belongs_to :finalized_by, index: true
      t.datetime :finalized_at
      t.belongs_to :created_by, index: true
      t.timestamps
    end
  end
end
