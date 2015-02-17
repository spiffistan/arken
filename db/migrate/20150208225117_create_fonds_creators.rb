class CreateFondsCreators < ActiveRecord::Migration
  def change
    create_table :fonds_creators do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
