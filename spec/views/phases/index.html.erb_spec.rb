require 'rails_helper'

RSpec.describe "phases/index", type: :view do
  before(:each) do
    assign(:phases, [
      Phase.create!(
        title: "Title"
      ),
      Phase.create!(
        title: "Title"
      )
    ])
  end

  it "renders a list of phases" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
  end
end
