class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.string :recno, :unique => true
      t.string :code
      t.text :vendor_description
      t.decimal :balance_transfer
      t.boolean :has_balance_transfer

      t.timestamps null: false
    end
  end
end
