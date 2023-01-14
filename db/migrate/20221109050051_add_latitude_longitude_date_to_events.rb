#Database function for adding latitude, longitude, and date  fields to the event database tables, for use on the google map view on the application to visualize event locations based on users current location. As well as showing events on calendar. 

class AddLatitudeLongitudeDateToEvents < ActiveRecord::Migration[7.0] 
  def change
    add_column :events, :latitude, :float
    add_column :events, :longitude, :float
    add_column :events, :date, :string
  end
end
