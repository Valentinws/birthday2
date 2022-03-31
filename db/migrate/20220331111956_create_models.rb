class CreateModels < ActiveRecord::Migration[6.1]
  def change
    create_table :models do |t|
      t.string :Birthday
      t.string :name
      t.date :dayofbirth
      t.integer :age
      t.string :sex
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
