# Background
Given(/^I traveled from the homepage to the new event form$/) do
    visit root_path
    click_link 'New Event'
    expect(page).to have_content("New Event")
end

# Scenario 1
When(/^I fill out the form correctly$/) do
    within("form") do
        fill_in 'Title', :with => 'Section 16'
        select 'Outdoor', :from => 'Category'
        fill_in 'Description', :with => 'Shady 6 mile hike'
        fill_in 'Location', :with => 'Colorado'
        fill_in 'Latitude', :with => '10.0'
        fill_in 'Longitude', :with => '10.0'
        fill_in 'Date', :with => '2022-10-12'
    end
    click_button 'Create Event'
end

Then(/^the event is successfully created$/) do
    expect(page).to have_content("Event was successfully created.")
end

# Scenario 2
When(/^I forget the title$/) do
    within("form") do
        select 'Outdoor', :from => 'Category'
        fill_in 'Description', :with => 'Shady 6 mile hike'
        fill_in 'Location', :with => 'Colorado'
        fill_in 'Latitude', :with => '10.0'
        fill_in 'Longitude', :with => '10.0'
        fill_in 'Date', :with => '2022-10-12'
    end

    click_button 'Create Event'
end

Then(/^I should see "Title can't be blank"$/) do
    expect(page).to have_content("Title can't be blank")
end

# Scenario 3
When(/^I forget the category$/) do
    within("form") do
        fill_in 'Title', :with => 'Section 16'
        fill_in 'Description', :with => 'Shady 6 mile hike'
        fill_in 'Location', :with => 'Colorado'
        fill_in 'Latitude', :with => '10.0'
        fill_in 'Longitude', :with => '10.0'
        fill_in 'Date', :with => '2022-10-12'
    end

    click_button 'Create Event'
end

Then(/^I should see "Category can't be blank"$/) do
    expect(page).to have_content("Category can't be blank")
end

# Scenario 4
When(/^I forget the description$/) do
    within("form") do
        fill_in 'Title', :with => 'Section 16'
        select 'Outdoor', :from => 'Category'
        fill_in 'Location', :with => 'Colorado'
        fill_in 'Latitude', :with => '10.0'
        fill_in 'Longitude', :with => '10.0'
        fill_in 'Date', :with => '2022-10-12'
    end

    click_button 'Create Event'
end

Then(/^I should see "Description can't be blank"$/) do
    expect(page).to have_content("Description can't be blank")
end

# Scenario 5
When(/^I forget the location$/) do
    within("form") do
        fill_in 'Title', :with => 'Section 16'
        select 'Outdoor', :from => 'Category'
        fill_in 'Description', :with => 'Shady 6 mile hike'
        fill_in 'Latitude', :with => '10.0'
        fill_in 'Longitude', :with => '10.0'
        fill_in 'Date', :with => '2022-10-12'
    end
    click_button 'Create Event'
end

Then(/^I should see "Location can't be blank"$/) do
    expect(page).to have_content("Location can't be blank")
end

# Scenario 6
When(/^I forget the latitude$/) do
    within("form") do
        fill_in 'Title', :with => 'Section 16'
        select 'Outdoor', :from => 'Category'
        fill_in 'Description', :with => 'Shady 6 mile hike'
        fill_in 'Location', :with => 'Colorado'
        fill_in 'Longitude', :with => '10.0'
        fill_in 'Date', :with => '2022-10-12'
    end
    click_button 'Create Event'
end

Then(/^I should see "Latitude can't be blank"$/) do
    expect(page).to have_content("Latitude can't be blank")
end

# Scenario 7
When(/^I forget the longitude$/) do
    within("form") do
        fill_in 'Title', :with => 'Section 16'
        select 'Outdoor', :from => 'Category'
        fill_in 'Description', :with => 'Shady 6 mile hike'
        fill_in 'Location', :with => 'Colorado'
        fill_in 'Latitude', :with => '10.0'
        fill_in 'Date', :with => '2022-10-12'
    end
    click_button 'Create Event'
end

Then(/^I should see "Longitude can't be blank"$/) do
    expect(page).to have_content("Longitude can't be blank")
end

# Scenario 8
When(/^I forget the date$/) do
    within("form") do
        fill_in 'Title', :with => 'Section 16'
        select 'Outdoor', :from => 'Category'
        fill_in 'Description', :with => 'Shady 6 mile hike'
        fill_in 'Location', :with => 'Colorado'
        fill_in 'Latitude', :with => '10.0'
        fill_in 'Longitude', :with => '10.0'
    end
    click_button 'Create Event'
end

Then(/^I should see "Date can't be blank"$/) do
    expect(page).to have_content("Date can't be blank")
end