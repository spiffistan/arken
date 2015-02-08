class CreateScreenings < ActiveRecord::Migration
  def change
    create_table :screenings do |t|

      t.timestamps
    end
  end
end
