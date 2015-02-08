class CreatePreservationAndDisposals < ActiveRecord::Migration
  def change
    create_table :preservation_and_disposals do |t|
      t.text :disposal_decision
      t.text :disposal_authority
      t.integer :preservation_time

      t.references :disposed_of_by
      t.datetime :disposed_of_at

      t.timestamps
    end
  end
end
