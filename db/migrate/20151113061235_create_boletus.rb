class CreateBoletus < ActiveRecord::Migration
  def change
    create_table :boletus do |t|
      t.references :movie, index: true, foreign_key: true
      t.references :ticket, index: true, foreign_key: true
      t.integer :pricecredit
      t.integer :pricepoints
      t.integer :numberpoints
      t.boolean :typeboletus

      t.timestamps null: false
    end
  end
end
