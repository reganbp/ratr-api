class AddBreweryToRatings < ActiveRecord::Migration[5.1]
  def change
    add_column :ratings, :brewery, :string
  end
end
