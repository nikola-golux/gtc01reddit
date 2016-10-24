class AddAttachmentAvatarToLinks < ActiveRecord::Migration
  def self.up
    change_table :links do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :links, :avatar
  end
end
