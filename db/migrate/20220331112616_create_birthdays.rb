class CreateBirthdays < ActiveRecord::Migration[6.1]
  def change
    create_table :birthdays do |t|
      t.string :name
      t.date :dayofbirth
      t.integer :age
      t.string :sex
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
