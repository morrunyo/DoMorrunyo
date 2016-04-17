class CreateActuators < ActiveRecord::Migration
  def change
    create_table :actuators do |t|
      t.string :name
      t.references :node, index: true, foreign_key: true
      t.references :actuatorType, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
