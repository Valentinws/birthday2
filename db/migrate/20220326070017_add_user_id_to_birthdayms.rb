class AddUserIdToBirthdayms < ActiveRecord::Migration[6.1]
  def change
    add_column :birthdayms, :user_id, :integer
    add_index :birthdayms, :user_id
  end
end
