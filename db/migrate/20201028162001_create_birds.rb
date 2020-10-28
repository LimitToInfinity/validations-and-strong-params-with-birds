class CreateBirds < ActiveRecord::Migration[6.0]
  def change
    create_table :birds do |t|
      t.string :name
      t.string :color
      t.integer :age

      t.timestamps
    end
  end
end
