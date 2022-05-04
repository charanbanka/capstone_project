require 'rails_helper'

RSpec.describe "sub_tasks/show", type: :view do
  before(:each) do
    @sub_task = assign(:sub_task, SubTask.create!(
      title: "Title",
      status: "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Status/)
  end
end
