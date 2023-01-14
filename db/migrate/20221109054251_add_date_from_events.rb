 #Database function for adding the 'date' field when users or orgonizations are creating new events

class AddDateFromEvents < ActiveRecord::Migration[7.0]

  def change
    add_column :events, :date, :date
  end
end
