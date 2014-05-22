class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :password
      t.string :nombre
      t.boolean :login

      t.timestamps
    end
  end
end
