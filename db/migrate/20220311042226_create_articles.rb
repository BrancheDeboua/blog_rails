class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.bigint :author_id, null: false
      t.text :article_text, null: false
      t.string :image_url
      t.integer :likes, default: 1
      t.integer :dislikes, default: 1

      t.timestamps
    end
  end
end
