class CreateFondsRecordsCreators < ActiveRecord::Migration
  def change
    create_table :fonds_records_creators do |t|
      t.belongs_to :records_creator, index: true
      t.belongs_to :fonds, index: true
      t.timestamps
    end
  end
end
