class AddBreweryToBrews < ActiveRecord::Migration[5.1]
  def change
    add_column :brews, :brewery, :string
  end
end
