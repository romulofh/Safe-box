class AddAgencyToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :agency, :string
    add_column :accounts, :type, :string
  end
end
