require 'rails_helper'

RSpec.describe "frosty_quests/index", type: :view do
  before(:each) do
    assign(:frosty_quests, [
      FrostyQuest.create!(
        name: "Name",
        status: false
      ),
      FrostyQuest.create!(
        name: "Name",
        status: false
      )
    ])
  end

  it "renders a list of frosty_quests" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
