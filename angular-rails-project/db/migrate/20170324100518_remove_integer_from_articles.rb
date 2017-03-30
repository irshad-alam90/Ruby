class RemoveIntegerFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :integer, :string
  end
end
