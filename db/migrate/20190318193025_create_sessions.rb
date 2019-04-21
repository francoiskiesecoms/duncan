class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.references :activity, foreign_key: true
      t.string :place
      t.string :coach
      t.timestamps
    end
  end
end
