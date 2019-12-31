require 'rails_helper'

RSpec.describe "pickups/edit", type: :view do
  before(:each) do
    @pickup = assign(:pickup, Pickup.create!())
  end

  it "renders the edit pickup form" do
    render

    assert_select "form[action=?][method=?]", pickup_path(@pickup), "post" do
    end
  end
end
