class AddFirstNameToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :first_name, :string
    add_column :posts, :last_name, :string
  end
end
