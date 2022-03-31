class CreateUserOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :user_options do |t|
      t.string :key
      t.string :value

      t.integer :user_id
      t.timestamps
    end
  end
end
