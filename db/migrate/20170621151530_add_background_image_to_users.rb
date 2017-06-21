class AddBackgroundImageToUsers < ActiveRecord::Migration[5.1]
  def up
    add_attachment :users, :background_image
  end

  def down
    remove_attachment :users, :background_image
  end
end
