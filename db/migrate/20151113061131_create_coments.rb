class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.references :socio, index: true, foreign_key: true
      t.references :movie, index: true, foreign_key: true
      t.string :coment

      t.timestamps null: false
    end
  end
end
