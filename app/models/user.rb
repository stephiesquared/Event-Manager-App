#Used when creating a new user for the website, in this case the devise gem is being used for user sign up and log in. Validates the proper methods are called in association with devise user creation.

class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
