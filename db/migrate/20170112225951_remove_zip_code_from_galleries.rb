class RemoveZipCodeFromGalleries < ActiveRecord::Migration[5.0]
  def up
    remove_column :galleries, :zip_code
  end

  def down
    add_column :galleries, :zip_code, :string, null: false
  end
end
