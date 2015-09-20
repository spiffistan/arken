class CreateFacets < ActiveRecord::Migration
  def change
    create_table :facets do |t|
      t.string :name
      t.text :description
      t.belongs_to :classification_system, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
