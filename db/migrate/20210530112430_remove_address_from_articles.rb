class RemoveAddressFromArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :address, :string
  end
end
