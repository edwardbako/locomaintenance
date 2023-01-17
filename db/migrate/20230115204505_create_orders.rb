class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :city
      t.references :locomotive, null: false, foreign_key: true
      t.integer :budget, default: 0
      t.integer :diem, default: 0
      t.string :housing
      t.integer :rental_housing, default: 0
      t.integer :tangen, default: 0
      t.integer :cup, default: 0
      t.integer :wheel_pairs, default: 0
      t.references :contact_person, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.references :executor, foreign_key: { to_table: :users}
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
