# == Schema Information
#
# Table name: maintenances
#
#  id               :integer          not null, primary key
#  engine_oil       :decimal(, )
#  transmission_oil :decimal(, )
#  gear_oil         :decimal(, )
#  air_filter       :decimal(, )
#  water_coolant    :decimal(, )
#  cement_blower    :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require "rails_helper"
RSpec.describe Maintenance, type: :model do
  before(:each) do
    @maintenance_red =  Maintenance.new(engine_oil: 20000, transmission_oil: 100000,  gear_oil: 100000, air_filter: 60000, water_coolant: 120000, cement_blower: 120000)
    @maintenance_orange = Maintenance.new(engine_oil: 18000, transmission_oil: 90000,  gear_oil: 90000, air_filter: 55000, water_coolant: 105000, cement_blower: 105000)
    @trip1 = Trip.new(distance: 500)
    @trip2 = Trip.new(distance: 1000)
  end

  it "test engine_oil on red alert" do
    @maintenance_red.save
    @trip1.save
    expect((@trip1.distance / @maintenance_red.engine_oil).to_f).to be(0.025.to_f)
  end

  it "test engine_oil on orange alert" do
    @maintenance_orange.save
    @trip2.save
    expect((@trip2.distance / @maintenance_orange.engine_oil).to_f).to be(0.05555555555555556.to_f)
  end

  it "test transmission_oil on red alert" do
    @maintenance_red.save
    @trip1.save
    expect((@trip1.distance / @maintenance_red.transmission_oil).to_f).to be(0.005.to_f)
  end

  it "test transmission_oil on orange alert" do
    @maintenance_orange.save
    @trip2.save
    expect((@trip2.distance / @maintenance_orange.engine_oil).to_f).to be(0.05555555555555556.to_f)
  end



end
