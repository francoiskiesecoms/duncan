class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.datetime :date_of_birth

      t.timestamps
    end
  end
end
