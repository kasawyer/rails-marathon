class AddYearToPaintings < ActiveRecord::Migration[5.0]
  def change
    add_column :paintings, :year, :integer, null: false
  end
end
