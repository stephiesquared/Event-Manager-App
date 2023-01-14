#Database function to remove the 'date' field from an event 

class RemoveDateFromEvents < ActiveRecord::Migration[7.0]

  def change
    remove_column :events, :date, :string
  end
end
