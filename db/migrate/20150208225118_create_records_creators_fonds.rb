class CreateRecordsCreatorsFonds < ActiveRecord::Migration
  def change
    create_table :records_creators_fonds do |t|
      t.belongs_to :records_creator, index: true
      t.belongs_to :fonds, index: true
      t.timestamps
    end
  end
end
