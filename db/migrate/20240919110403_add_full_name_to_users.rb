class AddFullNameToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :full_name, :string
    add_index :users, :full_name
  end
end
