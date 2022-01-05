class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :title
      t.string :office
      t.string :team 
      t.boolean :departing
      t.boolean :onboarding
      t.boolean :trained
      t.boolean :access
      t.boolean :equipment
      t.boolean :remote
      t.string :notes
      t.date :hire_date
      t.date :term_date
    end
  end
end
