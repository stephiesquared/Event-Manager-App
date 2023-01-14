def create_temp_user
    @temp_user ||= { :email => "asdf@asdf.com", :password => "asdfasdf" }
end

def sign_up
    visit '/users/sign_up'
    fill_in "user_email", :with => @temp_user[:email]
    fill_in "user_password", :with => @temp_user[:password] 
    fill_in "user_password_confirmation", :with => @temp_user[:password]
    click_button "Sign up"
end

def input_user_loc
    visit '/users/edit'
    fill_in "user_password", :with => @temp_user[:password]
    fill_in "user_latitude", :with => '38.8'
    fill_in "user_longitude", :with => '-104.7'
    click_button "Update"
end

Given("I am on the homepage") do
    visit root_path
end

Then("I should see a map") do
    page.should have_css('div#map')
end

When("there are one or more events listed") do
    click_link 'New Event'
    within("form") do
        fill_in 'Title', :with => 'Test Title'
        select 'Outdoor', :from => 'Category'
        fill_in 'Description', :with => 'Test'
        fill_in 'Location', :with => 'Test'
        fill_in 'Latitude', :with => '38.889'
        fill_in 'Longitude', :with => '-104.788'
        fill_in 'Date', :with => '11/11/2022'
    end
    click_button 'Create Event'
    visit root_path
end
  
Then("I should see events pinned on the map") do
    expect(page).to have_css("div#latitude")
    expect(page).to have_css("div#longitude")
end


When("I have entered my location") do
    create_temp_user
    sign_up
    input_user_loc
end

Then("I should see my location on the map") do
    visit root_path
    expect(page).to have_css("div#user-latitude")
    expect(page).to have_css("div#user-longitude")
end
