class CreateCrafts < ActiveRecord::Migration
  def change
    create_table :crafts do |t|
      t.string :name
      t.string :description
      t.string :auther
      t.string :image

      t.timestamps
    end
  end
end
