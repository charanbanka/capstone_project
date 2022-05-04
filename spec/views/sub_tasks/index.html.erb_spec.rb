require 'rails_helper'

RSpec.describe "sub_tasks/index", type: :view do
  before(:each) do
    assign(:sub_tasks, [
      SubTask.create!(
        title: "Title",
        status: "Status"
      ),
      SubTask.create!(
        title: "Title",
        status: "Status"
      )
    ])
  end

  it "renders a list of sub_tasks" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
  end
end
