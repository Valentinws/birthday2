class AddUserIdToUseroption < ActiveRecord::Migration[6.1]
  def change
    add_column :useroptions, :user_id, :integer
    add_index :useroptions, :user_id
  end
end
