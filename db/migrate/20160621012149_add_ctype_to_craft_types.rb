class AddCtypeToCraftTypes < ActiveRecord::Migration
  def change
    add_column :craft_types, :c_type, :string
    remove_column :craft_types, :type
  end
end
