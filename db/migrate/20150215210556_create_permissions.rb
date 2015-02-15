class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|

      t.belongs_to :user, index: true

      t.string :subject_type, null: false
      t.integer :subject_id

      t.string :action, null: false
      t.text   :description

      t.timestamps null: false
    end
    add_foreign_key :permissions, :users
  end
end
