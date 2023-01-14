 #Associating longitude and latitude to users in order to determine their current location, in order to show their ping on the google map API.

class AddLatitudeLongitudeToUsers < ActiveRecord::Migration[7.0]

  def change
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
