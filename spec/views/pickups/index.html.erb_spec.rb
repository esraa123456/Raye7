require 'rails_helper'

RSpec.describe "pickups/index", type: :view do
  before(:each) do
    assign(:pickups, [
      Pickup.create!(),
      Pickup.create!()
    ])
  end

  it "renders a list of pickups" do
    render
  end
end
