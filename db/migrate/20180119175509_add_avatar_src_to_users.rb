class AddAvatarSrcToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avatar_src, :string
  end
end
