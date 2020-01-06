class AddImageFileToSections < ActiveRecord::Migration[5.1]
  def change
    add_column :sections, :image_file_name, :image
  end
end
