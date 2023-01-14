Given(/^I am currently on the main page of the app$/) do
  visit root_path
  expect(page).to have_content("What is Happening in Colorado Today?")
end 

Then(/^I should see a calendar$/) do
  page.should have_css('div#calendar')  
end

#Scenario 1
When(/^I press the next year button$/) do
  click_button 'Next Year'
end 

#Then(/^I should see a calendar for next year$/) do
  #expect(date).to equal(date.getFullYear()+1,0,1)
#end 

#Scenario 2
When(/^I press the previous year button$/) do
  click_button 'Prev Year'
end

#Then(/^I should see a calendar for last year$/) do
  #expect(date).to equal(date.getFullYear()-1,0,1)
#end



