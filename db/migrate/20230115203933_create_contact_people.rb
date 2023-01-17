class CreateContactPeople < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_people do |t|
      t.string :phone
      t.string :name
      t.string :patronymic
      t.string :surname

      t.timestamps
    end
  end
end
