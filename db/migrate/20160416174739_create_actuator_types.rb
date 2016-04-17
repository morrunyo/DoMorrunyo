class CreateActuatorTypes < ActiveRecord::Migration
  def change
    create_table :actuator_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
