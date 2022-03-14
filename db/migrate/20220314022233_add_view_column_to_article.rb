class AddViewColumnToArticle < ActiveRecord::Migration[7.0]
  def change
    change_table :articles do |t|
      t.remove :dislikes
      t.bigint :views, default: 1
    end
  end
end
