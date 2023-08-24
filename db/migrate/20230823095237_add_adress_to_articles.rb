class AddAdressToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :address, :string
  end
end
