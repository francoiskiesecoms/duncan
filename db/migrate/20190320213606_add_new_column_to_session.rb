class AddNewColumnToSession < ActiveRecord::Migration[5.2]
  def change
    add_column :sessions, :date, :datetime
    add_column :sessions, :participants, :integer
  end
end
