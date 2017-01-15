class RemoveYearFromPaintings < ActiveRecord::Migration[5.0]
  def up
    remove_column :paintings, :year
  end

  def down
    add_column :paintings, :year, :integer, null: false
  end
end
