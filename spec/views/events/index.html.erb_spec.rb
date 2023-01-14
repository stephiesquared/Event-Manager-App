require 'rails_helper'
require 'factory_bot_rails'

RSpec.describe "events/index", type: :view do
  before(:each) do
    user = FactoryBot.create(:user)
    allow(controller).to receive(:current_user).and_return(user)
    assign(:events, [
      Event.create!(
        title: "Title",
        category: "Outdoor",
        description: "MyText",
        location: "Location",
        latitude: 11.2,
        longitude: 4.5,
        date: "2022-11-11"
      ),
      Event.create!(
        title: "Title",
        category: "Outdoor",
        description: "MyText",
        location: "Location",
        latitude: 6.5,
        longitude: 5.5,
        date: "2022-11-11"
      )
    ])
  end

  it "renders a list of events" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Outdoor".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Location".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Date".to_s), count: 2
  end
end
