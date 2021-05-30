class AddAuthorToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :name, :author, :string
  end
end
