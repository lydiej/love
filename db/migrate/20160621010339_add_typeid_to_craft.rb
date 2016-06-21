class AddTypeidToCraft < ActiveRecord::Migration
  def change
    add_column :crafts, :craft_type_id, :integer
  end
end
