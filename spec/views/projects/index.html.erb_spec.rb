require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        title: "Title",
        description: "MyText",
        status: "Status"
      ),
      Project.create!(
        title: "Title",
        description: "MyText",
        status: "Status"
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
  end
end
