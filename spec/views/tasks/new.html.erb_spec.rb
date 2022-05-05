require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      title: "MyString",
      description: "MyText",
      story_point: "9.99",
      priority: "MyString",
      status: "MyString",
      task_type: "MyString",
      select_member: "MyString",
      task_dependency: "MyString"
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input[name=?]", "task[title]"

      assert_select "textarea[name=?]", "task[description]"

      assert_select "input[name=?]", "task[story_point]"

      assert_select "input[name=?]", "task[priority]"

      assert_select "input[name=?]", "task[status]"

      assert_select "input[name=?]", "task[task_type]"

      assert_select "input[name=?]", "task[select_member]"

      assert_select "input[name=?]", "task[task_dependency]"
    end
  end
end
