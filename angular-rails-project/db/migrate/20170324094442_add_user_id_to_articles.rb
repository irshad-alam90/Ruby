class AddUserIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :user_id, :string
    add_column :articles, :integer, :string
  end
end
