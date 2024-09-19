class AddCourseToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :course, :string
    add_index :users, :course
  end
end
