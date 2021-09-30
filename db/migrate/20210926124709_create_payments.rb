class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :username
      t.string :value

      t.timestamps
    end
  end
end
