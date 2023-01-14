Given(/^I am in the new event form$/) do
    visit root_path
    click_link 'New Event'
    expect(page).to have_content("New Event")
end

#Scenario 1
When(/I fill out the title$/) do
    within("form") do
        fill_in 'Title', :with => 'Comedy Night @ Loonees'
        select 'Indoor', :from => 'Category'
        fill_in 'Description', :with => 'Come have a laugh at our monthly Comedy Night event!'
        fill_in 'Location', :with => 'Loonees Comedy Corner'
        fill_in 'Latitude', :with => '38.85'
        fill_in 'Longitude', :with => '-104.76'
        fill_in 'Date', :with => '2022-11-15'
    end
    click_button 'Create Event'
end

Then(/I should see the event labeled with the title$/) do
    expect(page).to have_content("Title: Comedy Night @ Loonees")
end

#Scenario 2
When(/I fill out the category$/) do
    within("form") do
        fill_in 'Title', :with => 'Comedy Night @ Loonees'
        select 'Indoor', :from => 'Category'
        fill_in 'Description', :with => 'Come have a laugh at our monthly Comedy Night event!'
        fill_in 'Location', :with => 'Loonees Comedy Corner'
        fill_in 'Latitude', :with => '38.85'
        fill_in 'Longitude', :with => '-104.76'
        fill_in 'Date', :with => '2022-11-15'
    end
    click_button 'Create Event'
end

Then(/I should see the event labeled with the category$/) do
    expect(page).to have_content("Indoor")
end

#Scenario 3
When(/I fill out the description$/) do
    within("form") do
        fill_in 'Title', :with => 'Comedy Night @ Loonees'
        select 'Indoor', :from => 'Category'
        fill_in 'Description', :with => 'Come have a laugh at our monthly Comedy Night event!'
        fill_in 'Location', :with => 'Loonees Comedy Corner'
        fill_in 'Latitude', :with => '38.85'
        fill_in 'Longitude', :with => '-104.76'
        fill_in 'Date', :with => '2022-11-15'
    end
    click_button 'Create Event'
end

Then(/I should see the event labeled with the description$/) do
    expect(page).to have_content("Description: Come have a laugh at our monthly Comedy Night event!")
end

#Scenario 4
When(/I fill out the location$/) do
    within("form") do
        fill_in 'Title', :with => 'Comedy Night @ Loonees'
        select 'Indoor', :from => 'Category'
        fill_in 'Description', :with => 'Come have a laugh at our monthly Comedy Night event!'
        fill_in 'Location', :with => 'Loonees Comedy Corner'
        fill_in 'Latitude', :with => '38.85'
        fill_in 'Longitude', :with => '-104.76'
        fill_in 'Date', :with => '2022-11-15'
    end
    click_button 'Create Event'
end

Then(/I should see the event labeled with the location$/) do
    expect(page).to have_content("Location: Loonees Comedy Corner")
end

#Scenario 5
When(/I fill out the date$/) do
    within("form") do
        fill_in 'Title', :with => 'Comedy Night @ Loonees'
        select 'Indoor', :from => 'Category'
        fill_in 'Description', :with => 'Come have a laugh at our monthly Comedy Night event!'
        fill_in 'Location', :with => 'Loonees Comedy Corner'
        fill_in 'Latitude', :with => '38.85'
        fill_in 'Longitude', :with => '-104.76'
        fill_in 'Date', :with => '2022-11-15'
    end
    click_button 'Create Event'
end

Then(/I should see the event labeled with the date$/) do
    expect(page).to have_content("Date: 2022-11-15")
end