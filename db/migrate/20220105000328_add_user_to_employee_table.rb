class AddUserToEmployeeTable < ActiveRecord::Migration[6.1]
  def change
    add_reference :employees, :user
    add_foreign_key :employees, :users
  end
end
