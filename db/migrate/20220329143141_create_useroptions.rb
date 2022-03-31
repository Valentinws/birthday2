class CreateUseroptions < ActiveRecord::Migration[6.1]
  def change
    create_table :useroptions do |t|
      t.boolean :that_day
      t.boolean :three_days_before
      t.boolean :seven_days_before
      t.string  :user_id

      t.timestamps
    end
  end
end
