class CreateBirthdayms < ActiveRecord::Migration[6.1]
  def change
    create_table :birthdayms do |t|
      
      t.string :name
      t.date :dayofbirth
      t.integer :age
      t.string :sex

      t.timestamps
    end
  end
end
