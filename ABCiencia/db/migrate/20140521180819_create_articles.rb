class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :autor
      t.text :cuerpo

      t.timestamps
    end
  end
end
