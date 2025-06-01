require 'rails_helper'

RSpec.describe "frosty_quests/new", type: :view do
  before(:each) do
    assign(:frosty_quest, FrostyQuest.new(
      name: "MyString",
      status: false
    ))
  end

  it "renders new frosty_quest form" do
    render

    assert_select "form[action=?][method=?]", frosty_quests_path, "post" do

      assert_select "input[name=?]", "frosty_quest[name]"

      assert_select "input[name=?]", "frosty_quest[status]"
    end
  end
end
