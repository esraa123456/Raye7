require 'rails_helper'

RSpec.describe "pickups/new", type: :view do
  before(:each) do
    assign(:pickup, Pickup.new())
  end

  it "renders new pickup form" do
    render

    assert_select "form[action=?][method=?]", pickups_path, "post" do
    end
  end
end
