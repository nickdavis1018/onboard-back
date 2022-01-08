class RemoveKeyfromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_reference :employees, :user
  end
end
