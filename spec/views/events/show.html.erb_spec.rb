require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    assign(:event, Event.create!(
      title: "Title",
      category: "Category",
      description: "MyText",
      location: "Location",
      latitude: 12.3,
      longitude: 42.2,
      date: "2023-04-02"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/2023-04-02/)
  end
end
