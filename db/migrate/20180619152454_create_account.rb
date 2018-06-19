class CreateAccount < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|

      t.string :number
      t.datetime :created_at
      t.datetime :updated_at

    end
  end
end
