class AddAmountToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :amount, :integer
  end
end
