class AddTeamAndRoleToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role, :string
    add_column :users, :team, :string
  end
end
