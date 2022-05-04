require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        title: "Title",
        description: "MyText",
        story_point: "9.99",
        priority: "Priority",
        status: "Status",
        task_type: "Task Type"
      ),
      Task.create!(
        title: "Title",
        description: "MyText",
        story_point: "9.99",
        priority: "Priority",
        status: "Status",
        task_type: "Task Type"
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "Priority".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
    assert_select "tr>td", text: "Task Type".to_s, count: 2
  end
end
