class CreateFondsCreatorsFonds < ActiveRecord::Migration
  def change
    create_table :fonds_creators_fonds do |t|
      t.belongs_to :fonds_creators, index: true
      t.belongs_to :fonds, index: true
      t.timestamps null: false
    end
  end
end
