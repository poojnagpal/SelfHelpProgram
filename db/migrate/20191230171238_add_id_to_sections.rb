class AddIdToSections < ActiveRecord::Migration[5.1]
  def change
    add_column :sections, :program_id, :integer
  end
end
