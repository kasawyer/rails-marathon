class AddZipToGalleries < ActiveRecord::Migration[5.0]
  def change
    add_column :galleries, :zip, :string, null: false
  end
end
