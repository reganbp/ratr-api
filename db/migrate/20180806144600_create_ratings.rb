class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.string :name
      t.string :rating
      t.text :notes

      t.timestamps
    end
  end
end
