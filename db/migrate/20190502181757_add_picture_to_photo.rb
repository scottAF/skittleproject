class AddPictureToPhoto < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :picture, :string
    add_index :user_id
  end
end