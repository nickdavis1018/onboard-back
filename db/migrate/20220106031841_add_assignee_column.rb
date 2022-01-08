class AddAssigneeColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :assignee, :string
    add_column :employees, :manager, :string
  end
end
