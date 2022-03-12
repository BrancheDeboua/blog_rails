class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.belongs_to :users, foreign_key: true, null: false
      t.text :description
      t.string :first_name, null: false
      t.string :last_name, null: false

      t.timestamps
    end
  end
end
