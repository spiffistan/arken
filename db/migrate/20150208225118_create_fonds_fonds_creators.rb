class CreateFondsFondsCreators < ActiveRecord::Migration
  def change
    create_table :fonds_fonds_creators do |t|
      t.belongs_to :fonds_creator, index: true
      t.belongs_to :fonds, index: true
      t.timestamps null: false
    end
  end
end
