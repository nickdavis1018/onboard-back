class ChangeEmployeesTable < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :img, :string
  end
end
