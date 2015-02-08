class CreateRecordsCreators < ActiveRecord::Migration
  def change
    create_table :records_creators do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
