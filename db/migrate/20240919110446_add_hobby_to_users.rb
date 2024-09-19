class AddHobbyToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :hobby, :string
    add_index :users, :hobby
  end
end
