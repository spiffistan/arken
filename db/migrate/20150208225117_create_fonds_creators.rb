class CreateFondsCreators < ActiveRecord::Migration
  def change
    create_table :fonds_creators do |t|
      t.uuid :uuid, default: 'uuid_generate_v4()', null: false

      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
