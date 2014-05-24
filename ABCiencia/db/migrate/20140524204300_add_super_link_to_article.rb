class AddSuperLinkToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :super_link, :string
  end
end
