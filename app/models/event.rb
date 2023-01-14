#Used when detecting if all required fields for a new event have been enterd by the user, errors are thrown in the following fields are not entered on the new event creation page.

class Event < ApplicationRecord

    validates_presence_of :title, :category, :description, :location, :latitude, :longitude, :date
end
