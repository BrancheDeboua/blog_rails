class AddForeignKeyArticleAuthors < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :articles, :authors, column: :author_id
  end
end
