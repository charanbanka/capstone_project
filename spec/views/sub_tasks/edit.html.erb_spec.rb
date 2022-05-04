require 'rails_helper'

RSpec.describe "sub_tasks/edit", type: :view do
  before(:each) do
    @sub_task = assign(:sub_task, SubTask.create!(
      title: "MyString",
      status: "MyString"
    ))
  end

  it "renders the edit sub_task form" do
    render

    assert_select "form[action=?][method=?]", sub_task_path(@sub_task), "post" do

      assert_select "input[name=?]", "sub_task[title]"

      assert_select "input[name=?]", "sub_task[status]"
    end
  end
end
