# == Schema Information
#
# Table name: trips
#
#  id              :integer          not null, primary key
#  trip_date       :date
#  driver          :text
#  weight          :text
#  trip_type       :boolean
#  liter           :decimal(, )
#  distance        :decimal(, )
#  average         :float
#  cement          :text
#  destination     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  engine_id       :integer
#  transmission_id :integer
#  gear_id         :integer
#  air_id          :integer
#  truck_id        :integer
#  coolant_id      :integer
#  blower_id       :integer
#  allowance       :decimal(, )
#

require "rails_helper"

RSpec.describe Trip, type: :model do
  before(:each) do
    @trip1 = Trip.new(trip_date: "2016-03-05", driver: "ทดสอบ", cement: "ผง", weight: "33", distance: "542", average: "3.2", destination: "มหิดล")
  end
  it "driver cannot be blank" do
    @trip1.driver = ""
    expect(@trip1.save).to be(false)
  end

  it "cement cannot be blank" do
    @trip1.cement = ""
    expect(@trip1.save).to be(false)
  end

  it "weight cannot be blank" do
    @trip1.weight = ""
    expect(@trip1.save).to be(false)
  end

  it "distance cannot be blank" do
    @trip1.distance = ""
    expect(@trip1.save).to be(false)
  end

  it "average cannot be blank" do
    @trip1.average = ""
    expect(@trip1.save).to be(false)
  end

  it "destination cannot be blank" do
    @trip1.destination = ""
    expect(@trip1.save).to be(false)
  end

end
