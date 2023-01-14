
#Database function for creating new events, creating database tables for each respective event category. 
class CreateEvents < ActiveRecord::Migration[7.0] 

  def change
    create_table :events do |t|
      t.string :title
      t.string :category
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
