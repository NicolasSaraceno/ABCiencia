class AddResumeToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :resume, :string
  end
end
