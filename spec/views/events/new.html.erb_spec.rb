require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      title: "MyString",
      category: "Indoor",
      description: "MyText",
      location: "MyString",
      latitude: 9.0,
      longitude: 9.0,
      date: "2022-12-25"
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input[name=?]", "event[title]"

      assert_select "select[name=?]", "event[category]"

      assert_select "textarea[name=?]", "event[description]"

      assert_select "input[name=?]", "event[location]"

      assert_select "input[name=?]", "event[latitude]"

      assert_select "input[name=?]", "event[longitude]"

      assert_select "input[name=?]", "event[date]"
    end
  end
end
