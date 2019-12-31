require 'rails_helper'

RSpec.describe "pickups/show", type: :view do
  before(:each) do
    @pickup = assign(:pickup, Pickup.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
