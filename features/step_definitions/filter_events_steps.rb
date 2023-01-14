Given (/^the following events exist$/) do |events_table|
    events_table.hashes.each do |event|
      Event.create!(:title => event['title'],
        :category => event['category'],
        :description => event['description'],
        :location => event['location'],
        :latitude => event['latitude'],
        :longitude => event['longitude'],
        :date => event['date'])
    end
  
end

And (/^I am on the main page$/) do
    visit root_path
    expect(page).to have_content("What is Happening in Colorado Today?")
end

#Scenario 1
When(/^I select a category from the drop down$/) do
    click_link 'Outdoor'
end

Then(/^I should only see events with similar category$/) do
    expect(page).to have_content("What is Happening in Colorado Today?")
    expect(page).to have_no_field("Indoor")
end

#Scenario 2
When(/^I choose a distance from my location$/) do

end

Then(/^I should only see events within the chosen distance range$/) do

end

#Scenario 3
When(/^I choose a time range$/) do

end

Then(/^I should only see events within the chosen time range$/) do

end