class AddAmountToRecord < ActiveRecord::Migration
  def change
    add_column :records, :amount, :integer
  end
end
