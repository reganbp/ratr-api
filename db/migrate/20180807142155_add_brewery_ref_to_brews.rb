class AddBreweryRefToBrews < ActiveRecord::Migration[5.1]
  def change
    add_reference :brews, :brewery, foreign_key: true
  end
end
