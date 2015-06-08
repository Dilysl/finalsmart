class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.date :date
      t.float :amount
      t.text :description

      t.timestamps null: false
    end
  end
end
