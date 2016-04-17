class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :name
      t.references :node, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
