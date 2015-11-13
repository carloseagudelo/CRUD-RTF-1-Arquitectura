class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :socio, index: true, foreign_key: true
      t.integer :totalpricepoints
      t.integer :totalpricecredit
      t.integer :totalpoints

      t.timestamps null: false
    end
  end
end
