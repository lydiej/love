class AddAttachmentPicToCrafts < ActiveRecord::Migration
  def self.up
    change_table :crafts do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :crafts, :pic
  end
end
