class RemoveImageFileFromSections < ActiveRecord::Migration[5.1]
  def change
    remove_column :sections, :image_file_name, :image
  end
end
