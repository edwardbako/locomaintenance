class CreateLocomotives < ActiveRecord::Migration[7.0]
  def change
    create_table :locomotives do |t|
      t.string :model
      t.integer :wheel_pairs

      t.timestamps
    end
  end
end
