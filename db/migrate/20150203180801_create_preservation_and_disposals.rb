class CreatePreservationAndDisposals < ActiveRecord::Migration
  def change
    create_table :preservation_and_disposals do |t|

      t.text :disposal_decision
      t.text :disposal_authority
      t.integer :preservation_time

      t.belongs_to :disposed_of_by, index: true
      t.datetime :disposed_of_at

      t.timestamps null: false
    end
  end
end
