require 'rails_helper'

RSpec.describe "frosty_quests/edit", type: :view do
  let(:frosty_quest) {
    FrostyQuest.create!(
      name: "MyString",
      status: false
    )
  }

  before(:each) do
    assign(:frosty_quest, frosty_quest)
  end

  it "renders the edit frosty_quest form" do
    render

    assert_select "form[action=?][method=?]", frosty_quest_path(frosty_quest), "post" do

      assert_select "input[name=?]", "frosty_quest[name]"

      assert_select "input[name=?]", "frosty_quest[status]"
    end
  end
end
