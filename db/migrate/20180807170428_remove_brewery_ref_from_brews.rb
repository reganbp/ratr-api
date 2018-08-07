class RemoveBreweryRefFromBrews < ActiveRecord::Migration[5.1]
  def change
    remove_reference :brews, :brewery, foreign_key: true
  end
end
