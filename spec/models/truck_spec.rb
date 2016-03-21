# == Schema Information
#
# Table name: trucks
#
#  id         :integer          not null, primary key
#  plate      :text
#  bulker     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "rails_helper"

RSpec.describe Truck, type: :model do
  before(:each) do
    @truck1 = Truck.new(plate: "70-3333")
    @truck2 = Truck.new(plate: "70-3333")
  end
  it "plate cannot be blank" do
    @truck1.plate = ""
    expect(@truck1.save).to be(false)
  end

  it "plate have to be unique" do
    @truck1.plate = "70-3333"
    @truck1.save
    @truck2.plate = "70-3333"
    expect(@truck2.save).to be(false)
  end
end
