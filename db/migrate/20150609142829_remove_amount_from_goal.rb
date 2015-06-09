class RemoveAmountFromGoal < ActiveRecord::Migration
  def change
    remove_column :goals, :amount, :float
  end
end
