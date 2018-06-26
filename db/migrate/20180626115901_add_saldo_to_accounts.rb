class AddSaldoToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :balance, :float
    add_column :accounts, :value_op, :float
  end
end
