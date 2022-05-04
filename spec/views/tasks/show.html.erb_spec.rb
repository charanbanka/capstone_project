require 'rails_helper'

RSpec.describe "tasks/show", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      title: "Title",
      description: "MyText",
      story_point: "9.99",
      priority: "Priority",
      status: "Status",
      task_type: "Task Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Priority/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Task Type/)
  end
end
