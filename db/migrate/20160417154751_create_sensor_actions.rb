class CreateSensorActions < ActiveRecord::Migration
  def change
    create_table :sensor_actions do |t|
      t.string :name
      t.references :sensorType, index: true, foreign_key: true
      t.string :action

      t.timestamps null: false
    end
  end
end
