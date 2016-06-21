class CreateCraftTypes < ActiveRecord::Migration
  def change
    create_table :craft_types do |t|
      t.string :type
      t.string :description

      t.timestamps
    end
  end
end
