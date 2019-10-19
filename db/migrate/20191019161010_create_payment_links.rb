class CreatePaymentLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_links do |t|
      t.belongs_to :user
      t.decimal :amount,                       precision: 16, scale: 2, null: false
      t.string :payment_link
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
