class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name
      t.string :address
      t.references :home, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
