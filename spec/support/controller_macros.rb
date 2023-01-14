#Create a mock user, using devise gem added to project, in order to test the login and signup features functionality
module ControllerMacros
    def login_user
      # Before each test, create and login the user
      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:user]
        user = FactoryBot.create(:user)
        # user.confirm! # Or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
        sign_in user
      end
    end
  end
